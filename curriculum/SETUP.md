# Training setup prerequisites

The task pages describe the intended training environment. This documentation
update does not implement Northstar Desk or modify the Rails starter. Task 01
can inspect the current checkout; exercises that use the baseline need the
following work supplied separately before they can run as written.

## Harness setup

- Register the Markdown skills for agents that use `.agents/skills/`, or read
  their canonical `ai-harness/skills/<name>/SKILL.md` paths directly.
- Git-ignore `.ai-workspace/tasks/` before writing private task state.
- Supply the optional `ai-harness/scripts/context.rb` helper and its tests, or
  collect equivalent read-only Git evidence. A missing helper is a setup
  finding, not evidence that the harness is fully installed.
- Select and verify a local Ruby runtime. The current `.ruby-version` is blank;
  CI selects its runtime explicitly without changing application files.

The existing `ai-harness/scripts/install.rb --dry-run` reports registration and
ignore changes before an actual, separately requested installation.

## Northstar Desk baseline

Provide only the starting state described in the
[baseline table](README.md#the-baseline-application): employees and managers,
expense submission and approval fields, equipment reports with an optional
unvalidated asset number, incidents with severity/status/on-call/lead fields,
vacation submissions with status, and a read-only handbook of the fixtures.

Seed fictional examples and an "acting as" identity switcher. Keep the baseline
independent of exercise solutions: Task 03's labels, Task 04's approval/calendar,
Task 06's timelines, Task 09's validation/search/order, and Task 10's model
answers remain learner work. Preserve the two date problems in Task 05 so they
can be reproduced before fixing them.

## Exercise starter patches

Supply the patches listed in the [starters specification](starters/README.md)
after the baseline exists. Validate that each applies to a fresh baseline and
that its documented starting tests run. Add those runtime checks to CI only
when the files and baseline are available.

## Current verification scope

Documentation checks validate links and task-page structure. Existing starter
and Learning Agent checks validate their existing behavior. Passing those
checks does not establish that Northstar Desk or its exercise patches exist.
