# Task 09 — Two tracks at once

**Level 3 · Quality gates** · Harness focus: `worktree-create`, stacked
branches and PRs · Size: 3–4 h

## Why this task

Real work rarely arrives one change at a time. This task runs two independent
changes in parallel and stacks a third on one of them, each in its own
isolated checkout, so nothing leaks between them.

## Starting point

Start from `main`. Read [D02](../fixtures/D02-equipment.md),
[D04](../fixtures/D04-vacation.md), and the equipment report and vacation
request code in the baseline app.

## Brief

Three changes, each delivered as its own branch and draft PR in your fork:

**A — Asset numbers (base: `main`).** Equipment reports already have an optional
asset number. Add format validation: when present it must match `NS-` followed by six digits (for example
`NS-004211`); otherwise the form shows a validation error. The asset number
appears on the report page and in the reports list.

**B — Find by asset number (base: branch A).** On the equipment reports list,
an IT desk member can search by asset number. An exact match shows that
report; no match shows a clear empty state. B is stacked on A, so its PR
targets A's branch, not `main`.

**C — Vacation list order (base: `main`).** The acting employee's vacation
requests are listed with the soonest start date first. Currently the order is
undefined.

**Acceptance criteria.**

- Three branches; A and C based on `main`, B based on A.
- Three draft PRs in your fork. B's PR targets A's branch, and each PR's diff
  contains only its own change.
- Each change has tests; the suite and RuboCop pass in each checkout.
- `git worktree list` shows separate checkouts were used for at least A and C
  while both were in progress.

**Stretch.** After opening B, make a review change on A (for example, improve
the validation message). Bring B up to date with A and confirm B's PR still
shows only B's change.

**Out of scope.** Asset inventory, partial-match search, and vacation
filtering.

## Path A — on your own

```sh
git worktree add ../desk-a -b task-09-asset-numbers main
git worktree add ../desk-c -b task-09-vacation-order main
```

Create B from A once A has a commit. Open PRs with `gh pr create --draft
--base <branch> --repo <your-fork>`.

## Path B — via the harness

```text
Use worktree-create to create an isolated checkout for change A in
curriculum/tasks/09-two-tracks-at-once.md, based on main.
```

```text
Use worktree-create to create an isolated checkout for change C in
curriculum/tasks/09-two-tracks-at-once.md, based on main.
```

Start a separate agent session in each returned directory and run
`implement-task` there for that change only. When A has a commit:

```text
Use worktree-create to create an isolated checkout for change B, stacked on
the change A branch.
```

**Watch for.** A new worktree contains only committed files. Task workspaces
under `.ai-workspace/tasks/` are per checkout, and an uncommitted harness setup
does not follow you into the new directory. B's PR base silently defaulting to
`main`, which would show A's changes in B's diff.

## Path C — both

Do A and C on your own in worktrees, then B through the harness, or the other
way round. Compare how much of your attention went to Git bookkeeping in each.

## Done when

- The acceptance criteria are met; the three PR URLs and `git worktree list`
  output are in your handoff.
- You can explain what happens to B when A is merged into `main`.

## Debrief

1. What would have gone wrong doing A and C in one checkout?
2. How do you keep a stacked branch correct when its base changes?
3. When is a stack the wrong choice, and one larger PR the right one?
