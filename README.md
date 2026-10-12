# LLM Lab

This repository trains developers to work with the company AI harness: give it
a brief, steer its work, verify its evidence, and ship the intended change.
Start with the [twelve training tasks](curriculum/README.md) and the
[task workflow](curriculum/WORKFLOW.md).

## Current setup

This update changes documentation and CI. The Rails application remains the
original starter, with its `/up` health route. The Northstar Desk baseline,
seeded employees, and Task 07/08 starter patches described by the curriculum
are prerequisites for a separate implementation change; they are not present
in this checkout. See the [setup checklist](curriculum/SETUP.md).

Task 01 can audit the current checkout and report those gaps. Prepare the
baseline before starting the exercises that depend on its pages and models.
Keep task solutions on separate branches, starting from the prepared `main`.

## What is here

- `app/`, `config/`, `db/`, `test/`: the unchanged Rails starter.
- `curriculum/tasks/`: Tasks 01–12, with solo, harness, and comparison paths.
- `curriculum/fixtures/`: four fictional policy documents for the exercises.
- `curriculum/starters/`: the specification of the Task 07/08 starter patches.
- `ai-harness/`: workflow instructions and the existing installation script.
- `.ai-workspace/configs/`: Markdown adaptations for this repository.
- `standalone/`: optional Ruby experiments, outside the task progression.
- `learning-agent/`: coaching skills and private learning-state templates.

## First run: start the application

Select a Ruby compatible with the Rails version in `Gemfile.lock`. The current
`.ruby-version` is blank, so it does not pin a local runtime. CI selects Ruby
4.0.6 explicitly. `Gemfile.lock` records Bundler 4.0.3.

A local PostgreSQL server must be running. By default Rails uses a local socket
and your operating-system username as the database role. That role needs
permission to create the development and test databases. See
`config/database.yml` for their names and connection settings.

```sh
bundle install
bin/rails db:prepare
bin/rails test
bin/rubocop
bin/rails server
```

Open `http://localhost:3000/up` to check that the starter boots. It has no
Northstar Desk home page or demo identity switcher yet.

No provider key or RubyLLM dependency is needed to start. Task 10 introduces
a provider behind a service boundary and leaves the client library choice
open; its automated tests are required to use a fake provider.

## Use the harness

The workflow instructions are available under `ai-harness/skills/` and routed
from `AGENTS.md`. Native discovery through `.agents/skills/` requires separate
installation. You can inspect the existing installer's proposed changes with:

```sh
ruby ai-harness/scripts/install.rb --dry-run
```

Actual installation changes registration links and `.gitignore`; it is a
separate setup action. Before writing private workspaces, confirm that
`.ai-workspace/tasks/` is Git-ignored. The optional context helper and its
runtime tests are not included in this documentation update; use read-only
Git commands until that tooling is supplied. See the
[harness README](ai-harness/README.md) for the workflow and installation guide.

## Start a task

Read its brief, check the [prerequisites](curriculum/SETUP.md), and choose solo,
harness, or both. Branch from `main`; do not merge task solutions into `main`.
Task 09 explicitly stacks one branch on another. Publish task PRs against your
own fork.

For the harness path, use the prompt on the task page. For coaching on your
own implementation, use `guided-coding`. Use `finish-learning-session` when
you want to record reflection and the next step. The detailed log stays in
`learning-agent/docs/LEARNING_LOG.local.md`; verify it is ignored before writing.
Share only your confirmed words through the
[handoff template](curriculum/templates/LESSON_HANDOFF.md).

## Checks and boundaries

CI checks local Markdown links, task numbering, required task-page sections,
and existing Learning Agent tools. It retains the starter's Rails tests,
RuboCop, and security scan. It does not claim to test the absent baseline or
starter patches.

Use fictional data only. Keep keys out of source, logs, workspaces, and PRs.
The [internal-use gate](curriculum/INTERNAL_USE_GATE.md) describes the separate
decision required before handling real company information.
