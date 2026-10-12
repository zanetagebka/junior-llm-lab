# Task 03 — First hand-off

**Level 1 · Orientation** · Harness focus: `implement-task` in autonomous
mode, reading verification evidence · Size: 2–3 h

## Why this task

This is the first time the harness writes code. The change is small and fully
specified on purpose, so you can concentrate on what the agent reports, how it
verifies, and whether its evidence matches yours.

## Starting point

Branch from `main`. Read [D01](../fixtures/D01-expenses.md) and the expense
claim model, list page, and claim page in the baseline app.

## Brief

**Situation.** Managers must approve expense claims above 200 demo credits,
but nothing in Northstar Desk shows which claims need that. Finance keeps
finding unapproved large claims late.

**Required behavior.**

- The claims list and the claim page show a "Needs manager approval" label on
  every claim whose amount is greater than 200 credits and which has not been
  approved.
- A claim of exactly 200 credits does not show the label.
- Once a claim is approved, the label no longer appears.

**Acceptance criteria.**

- Automated tests cover amounts of 199.99, 200.00, and 200.01, and an
  approved claim above 200.
- The full test suite and RuboCop pass.
- The diff touches only what the behavior needs.

**Out of scope.** The approval action itself, notifications, and styling
beyond a readable label.

## Path A — on your own

Implement it, write the tests, and run the checks. Note how long it took and
where you hesitated.

## Path B — via the harness

```text
Use implement-task for curriculum/tasks/03-first-hand-off.md. Implement the
brief, verify it, and stop at PR preparation.
```

This runs autonomously: the agent explains its approach, then proceeds. When
it finishes:

1. Read the Verification table in `.ai-workspace/tasks/03/workspace.md`. For
   each line, decide whether it was actually run and shows real output.
2. Read the full diff (`git diff main...` plus untracked files).
3. Run `bin/rails test` and `bin/rubocop` yourself.

**Watch for.** Verification lines describing expected results rather than
observed ones. Where the 200-credit boundary lives: in one place, or repeated
in the view and the model? Changes outside the brief, such as reformatting or
"while I was here" improvements.

## Path C — both

Do path A first on `task-03-solo`, then path B on `task-03-harness`. Compare
the diffs: where the rule lives, how the tests are written, and what each
version would make easier or harder later.

## Done when

- The acceptance criteria are met on your branch.
- You have re-run the checks yourself and compared them with the agent's
  recorded results (path B or C).
- A handoff note exists, using the [template](../templates/LESSON_HANDOFF.md).

## Debrief

1. Did the agent's recorded verification match what you observed? If not,
   what was different?
2. Where in the code is "greater than 200" decided, and why there?
3. What, if anything, would you have rejected in review?
