# Shared workflow contract

The host is the repository being worked on, not the directory containing the
harness package. Resolve skill references relative to the canonical
skill directory (follow project symlinks). The package root is two directories
above that directory. Run project commands in the host repository.

Read the host's applicable instructions and
`.ai-workspace/configs/harness.md` when present. For a specific skill, also read
`.ai-workspace/configs/<skill-name>.md` when present. Config files are standing
project instructions; missing files mean defaults, not a setup interview.
Project instructions and the user's current scope govern implementation,
verification, review, and publication. Do not require learning exercises in
ordinary repositories. Learning repositories may impose mentoring gates.

## Task state

Use the workspace supplied by the user or project configuration. Otherwise use
`.ai-workspace/tasks/<task-id>/workspace.md`, with a filesystem-safe task key or
slug (letters, digits, hyphens, underscores; no paths). Before writing private
state, verify the destination with `git check-ignore`; if it is not ignored,
fix the workspace ignore rule within the authorized setup or use chat until it
is private. Never stage task workspaces.

Create missing state from `templates/workspace.md` in this package. Record the
source, acceptance criteria, branch and base, involvement, research, ordered
checks, actual results, review scope, and next action. Preserve user edits and
completed work. Separate observed facts from assumptions. Empty fields and
unchecked items are unrecorded, never approved or complete. Do not duplicate
personal learning logs or store credentials or raw private conversations.

## Scope and involvement

An explicit request to implement a named task authorizes its coherent code,
tests, and necessary local checks, subject to repository instructions. A
request only to research, plan, diagnose, or review does not request code edits.
Do not impose a narrow learner-only code boundary on normal project work.

Default involvement is **autonomous** for an implementation request: explain
the approach, then proceed through authorized work. **plan-review** waits for
review of the concrete plan; **step-review** waits at the agreed checkpoints.
Honor a configured or already expressed preference without re-asking. Ask only
when a missing consequential decision cannot be resolved from the brief.

A request to implement a task does not itself request publication. A request
to deliver through a PR, or to create a PR, authorizes scoped commits, a normal
push, and PR creation. Prepare the exact file set, title, body, base, and
branch before executing. Do not ask again for permission already granted.
Sending messages, updating tracker status, merging, deployment, force-pushing,
and deleting worktrees are separate actions. Reviews and status reads publish
nothing. Preserve unrelated dirty work; never use blanket staging or resets.

## Git and evidence

Use `scripts/context.rb <host-path>` in this package for a local, read-only
snapshot. It reports branch, local default-branch evidence, upstream drift,
changed paths, and PR templates without credentials or network calls. Missing
Ruby or a missing optional helper means use equivalent Git queries through the host's tools with the same
read-only guards; do not install a runtime merely to gather context. Report
unavailable fields as unknown, including a skipped status with its recorded
reason. The helper excludes submodule changes and symlinked templates. Missing
default branch is unknown: resolve it through the forge, remote HEAD, a
configured base, or the user; never silently assume `main`. A configured or
explicit stacked base takes precedence over the default.

For review, include relevant committed, staged, unstaged, and untracked files.
Record the revision and working-tree scope so later edits do not inherit an
old clean review. Run relevant checks from project documentation and CI; no
universal language, test framework, or mandatory full-suite rule. Reproduce a
bug before fixing it when practical. Report exact observed output and limits,
including `Not run`; do not convert anticipated results into evidence.
