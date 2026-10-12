# Task 01 — Read before you touch

**Level 1 · Orientation** · Harness focus: `config-check`, `context.rb`,
research-only scope · Size: 1–2 h

## Why this task

Before delegating anything, you need to know what the harness reads, where it
keeps state, and what it will and will not do on a given request. This task
changes no tracked files.

## Starting point

Branch `task-01-solo` or `task-01-harness` from `main`. No setup beyond the
repository README. Check the [current setup status](../SETUP.md); a missing
context helper or unregistered skill is a finding to report, not a reason to
invent a successful check. Equivalent read-only Git commands can supply context.

## Brief

**Situation.** A new team member is about to follow the repository's setup
instructions. Nobody has checked recently whether those instructions still
match the repository.

**Required outcome.** A short written report, kept outside Git (the task
workspace, or a private note), containing:

1. Each factual claim in the README's "First run: start the application"
   section (tool versions, commands, database expectations), and for each
   one the repository file that confirms or contradicts it.
2. The harness state of this checkout: whether routing in `AGENTS.md` is
   present, whether the skills are registered, whether the task workspace
   directory is Git-ignored, and what the repository's default branch is,
   with the evidence for that answer.
3. Any discrepancy you found, with a suggested fix written as text, not applied.

**Acceptance criteria.**

- Every claim in the report cites a file, a command, or command output.
- Facts and assumptions are labeled separately.
- `git status` shows no tracked-file changes at the end.

**Out of scope.** Fixing anything. That is a separate request.

## Path A — on your own

Read the README, `.ruby-version`, `Gemfile.lock`, `config/database.yml`,
`AGENTS.md`, `.gitignore`, and `.agents/skills/`. Use plain Git to find the
default branch (`git symbolic-ref refs/remotes/origin/HEAD`, `git remote show
origin`).

## Path B — via the harness

```text
Use config-check to check this repository's harness setup.
```

```text
Research only, no file edits: compare every factual claim in the README's
"First run: start the application" section with the repository files.
Report each claim with its evidence and label anything you assumed.
```

Then run the context helper yourself and read its JSON:

```sh
ruby ai-harness/scripts/context.rb .
```

**Watch for.** If the agent edits a file to "fix" a discrepancy, that is a
scope violation: a research request does not authorize edits. Record it and
revert the edit. In a fresh fork, the context helper may report the default
branch as unknown. Find out why before concluding anything.

## Path C — both

Do path A first and write your report. Then run path B and compare: which
discrepancies did each find, and which claims did each mark as assumptions?

## Done when

- The report exists and meets the acceptance criteria.
- `git status` is clean apart from ignored files.
- You can explain where the harness stores task state and why that location
  must be Git-ignored.

## Debrief

1. What did `config-check` report that you would not have checked yourself?
2. Why does the harness leave the default branch unknown instead of assuming
   `main`? What would go wrong if it assumed?
3. If a teammate asked "is the setup guide correct?", which parts of your
   answer are observed and which are inferred?
