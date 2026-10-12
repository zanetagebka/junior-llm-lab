#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "optparse"
require "pathname"

class HarnessInstaller
  class Error < StandardError; end
  START = "<!-- ai-harness:start -->"
  FINISH = "<!-- ai-harness:end -->"

  def initialize(repo:, package:, out: $stdout)
    @repo = Pathname.new(repo).expand_path.realpath
    @package = Pathname.new(package).expand_path.realpath
    @out = out
  end

  def install(dry_run: false)
    raise Error, "Target must be a Git repository root." unless @repo.join(".git").exist?
    relative = @package.relative_path_from(@repo).to_s
    raise Error, "Copy the ai-harness package inside the target repository first." if relative == "." || relative.start_with?("../")
    skills = @package.glob("skills/*/SKILL.md").map(&:dirname).sort
    raise Error, "No package skills found." if skills.empty?

    links = skills.map do |source|
      [ @repo.join(".agents", "skills", source.basename), source ]
    end
    # Complete preflight before writing anything; collisions preserve existing skills.
    links.each do |destination, source|
      reject_symlink_parents(destination)
      if destination.exist? || destination.symlink?
        raise Error, "Existing skill conflicts with this package: #{destination}" unless destination.symlink? && destination.realpath == source
      end
    end

    agents = @repo.join("AGENTS.md")
    original = agents.file? ? agents.read : ""
    block = <<~MARKDOWN.chomp
      #{START}
      ## AI work harness

      Use the reusable workflows in `#{relative}/skills/`: `implement-task`,
      `plan-work`, `self-review`, `create-pr`, `status`,
      `worktree-create`, `config-check`, and `writing-code-comments`.
      Read `#{relative}/references/workflow.md` and applicable project
      instructions when running a workflow. Project adaptations live in
      `.ai-workspace/configs/`; missing config uses the shared defaults.
      See `#{relative}/README.md` for invocation and installation.
      #{FINISH}
    MARKDOWN
    content = replace_block(original, block)
    writes = { agents => content }
    ignore = @repo.join(".gitignore")
    ignore_content = ignore.file? ? ignore.read : ""
    rule = "/.ai-workspace/tasks/"
    writes[ignore] = append(ignore_content, "# Private AI task plans, checks, and drafts\n#{rule}") unless ignore_content.lines.any? { |line| line.strip == rule }
    writes.each_key { |path| reject_symlink_parents(path); raise Error, "Instruction or ignore file must not be a symlink: #{path}" if path.symlink? }

    links.each do |destination, source|
      next if destination.symlink?
      @out.puts "#{dry_run ? 'Would link' : 'Link'} #{destination.relative_path_from(@repo)}"
      next if dry_run
      FileUtils.mkdir_p(destination.dirname)
      destination.make_symlink(source.relative_path_from(destination.dirname))
    end
    writes.each do |path, text|
      next if path.file? && path.read == text
      @out.puts "#{dry_run ? 'Would update' : 'Update'} #{path.relative_path_from(@repo)}"
      path.write(text) unless dry_run
    end
    @out.puts dry_run ? "Dry run complete; no files changed." : "Harness connected. Start a new agent session."
    0
  end

  def self.main(args, out: $stdout, err: $stderr)
    options = { repo: Dir.pwd, dry_run: false }
    parser = OptionParser.new do |config|
      config.banner = "Usage: ruby install.rb [--repo PATH] [--dry-run]"
      config.on("--repo PATH") { |value| options[:repo] = value }
      config.on("--dry-run") { options[:dry_run] = true }
    end
    parser.parse!(args)
    raise Error, parser.banner unless args.empty?
    new(repo: options[:repo], package: Pathname.new(__dir__).join(".."), out: out).install(dry_run: options[:dry_run])
  rescue Error, OptionParser::ParseError, SystemCallError => e
    err.puts e.message
    1
  end

  private

  def append(content, addition)
    "#{content}#{content.empty? || content.end_with?("\n\n") ? '' : "\n"}#{addition}\n"
  end

  def replace_block(content, block)
    pattern = /#{Regexp.escape(START)}.*?#{Regexp.escape(FINISH)}/m
    unless content.scan(START).length == content.scan(FINISH).length && content.scan(START).length <= 1 && (!content.include?(START) || content.match?(pattern))
      raise Error, "AGENTS.md has incomplete or duplicate ai-harness markers."
    end
    content.include?(START) ? content.sub(pattern, block) : append(content, block)
  end

  def reject_symlink_parents(path)
    path.dirname.ascend do |ancestor|
      break if ancestor == @repo
      raise Error, "Installation directory must not be a symlink: #{ancestor}" if ancestor.symlink?
    end
  end
end

exit HarnessInstaller.main(ARGV) if __FILE__ == $PROGRAM_NAME
