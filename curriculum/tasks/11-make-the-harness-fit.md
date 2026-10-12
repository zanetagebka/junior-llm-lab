# Task 11 — Make the harness fit

**Level 4 · Judgment** · Harness focus: project configuration, portability,
`config-check` · Size: 2–4 h

## Why this task

The harness is meant for many projects with different rules. Teams adapt it
with short standing instructions rather than code. This task tests whether
rules you write are actually followed, and what it takes to bring the harness
into a repository that has never seen it. Do part 1, part 2, or both.

## Starting point

Branch from `main`. Read the "Project adaptations" and "Install in another
project" sections of [the harness README](../../ai-harness/README.md), and the
current [lab configuration](../../.ai-workspace/configs/harness.md).

## Brief

### Part 1 — Team rules

A fictional team wants these conventions applied by the harness in this
repository:

1. Any change that adds a database migration uses plan-review involvement,
   even when the request does not say so.
2. Branches are named `nsd-<short-slug>`, such as `nsd-incident-export`.
3. PR bodies include a "Rollback" line describing how to undo the change.
4. Verification always includes `bin/rails test` and `bin/rubocop`, reported
   with their real output.

Write these as standing instructions in `.ai-workspace/configs/`. Choose
between `harness.md` and a skill-specific file such as `create-pr.md`. Then
prove whether each rule is followed by running the harness on this small
brief, up to PR preparation only:

> Incidents get an optional "customer impact" text field, shown on the
> incident page.

(That brief needs a migration, so rule 1 applies.)

### Part 2 — A second repository

Install the harness into another Git repository you control: a personal
project, or a fresh `rails new` app. Follow the README's manual installation
steps, run `config-check` there, and take one small, real change in that
repository through `implement-task` to PR preparation.

**Acceptance criteria.**

- Part 1: the configuration files, plus a table with one row per rule: rule,
  followed (yes, no, partially), and the evidence. Where a rule was not
  followed, one rewording attempt and its result.
- Part 2: the `config-check` report from the second repository, a list of
  every manual step you needed (including any the README did not mention), and
  the PR preparation output.
- `config-check` in this repository still reports a valid setup.

**Out of scope.** Changing anything under `ai-harness/` itself. If the
package needs a change, write it up as a suggestion.

## Path A — on your own

Part 1 is inherently a harness task. For a solo baseline, apply the four rules
by hand to the brief, then compare effort and consistency with the harness
run.

## Path B — via the harness

```text
Use config-check to check this repository's harness setup.
```

```text
Use implement-task for this brief and stop at PR preparation: Incidents get
an optional "customer impact" text field, shown on the incident page.
```

Do not mention the rules in the request. The point is to see whether standing
configuration applies without reminders.

**Watch for.** Rules applied to the plan but forgotten by PR preparation.
Rules that conflict with the lab's existing configuration, and which one won.
For part 2: anything the README assumed that your second repository did not
have.

## Path C — both

See path A.

## Done when

- The acceptance criteria for the parts you chose are met.
- You can say which kinds of rules the harness followed reliably and which
  needed more precise wording.

## Debrief

1. Which rule was hardest to state so it was followed, and what fixed it?
2. What belongs in `AGENTS.md`, what in `.ai-workspace/configs/harness.md`,
   and what in a skill-specific config?
3. (Part 2) What would you change in the installation instructions?
