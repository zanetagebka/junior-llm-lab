# Task 12 — Capstone: from a vague request

**Level 4 · Judgment** · Harness focus: the whole flow, chosen involvement,
owning requirements · Size: 1–2 days

## Why this task

Real requests arrive vague. The harness asks only about decisions it cannot
resolve from the brief, which means a vague brief gets a confident guess. This
task makes you turn a stakeholder message into requirements you own, then
deliver them with whatever mix of harness and hand work you judge best, and
defend those choices.

## Starting point

Branch from `main`. Any part of the baseline app is fair game.

## Brief

**Message from the Northstar operations lead:**

> Two things keep coming up. Incidents get closed and the follow-up review we
> are supposed to write just never happens. And managers tell me they miss
> approvals: expense claims and vacation requests sit for days. Can Desk help
> with either? I don't need anything fancy.

**Your job.**

1. **Requirements first.** Write a problem statement, the scope you choose
   (one issue or both, with a reason), and acceptance criteria someone else
   could verify. List what you are deliberately not doing. Get a mentor or
   peer to sign off before any code. Record the sign-off and any changes.
2. **Deliver.** Implement the agreed scope to a draft PR in your fork. For each
   slice, choose how to work: on your own, harness autonomous, plan-review, or
   step-review. Write one line on why for each.
3. **Retrospective.** A half-page note on where the harness saved time, where
   it was wrong or would have been without you, what you verified yourself,
   and what you would configure differently next time.

**Acceptance criteria.**

- The requirements were written and signed off before the first code commit.
  Commit order or timestamps can show this.
- Each acceptance criterion maps to evidence in the PR: a test, a command
  output, or a described manual check.
- A self-review was run on the final revision, and its findings are resolved
  or explicitly accepted.
- The PR contains only the agreed scope and follows the repository template.
- The retrospective exists.

**Out of scope.** Anything not in your signed-off requirements. If you
discover more, write it down as follow-up work.

## Path A — on your own

Valid, but then the retrospective should compare against at least one earlier
harness task.

## Path B — via the harness

Shape the prompts yourself. Some useful starting points:

```text
Use plan-work for <path to your requirements file>. List any decision the
requirements leave open. Stop after planning.
```

```text
Use implement-task for <requirements> with <involvement>. Implement only
<slice>.
```

```text
Use self-review for all changes on this branch against <requirements>.
```

```text
Use create-pr to prepare a PR description for the agreed changes.
```

**Watch for.** The agent widening scope because the original message was
broad. Your requirements file, not the stakeholder message, is the brief.
Open decisions resolved in code instead of with your reviewer.

## Path C — both

Not required. Mixing approaches by slice is the point of this task.

## Done when

- The acceptance criteria are met and the PR URL is in your handoff.
- You can defend your scope choice and your involvement choice for each slice
  to a reviewer in a few minutes.

## Debrief

1. Which requirement changed after sign-off discussion, and why?
2. Which involvement choice would you change in hindsight?
3. If you were rolling the harness out to your team tomorrow, what is the one
   thing you would tell them?
