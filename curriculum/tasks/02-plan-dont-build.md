# Task 02 — Plan, don't build

**Level 1 · Orientation** · Harness focus: `plan-work`, slices, open decisions
· Size: 1–2 h

## Why this task

A plan is the cheapest place to catch a wrong approach. This task practises
asking for a plan only, reading it critically, and owning the result. No
application code is written.

## Starting point

Branch from `main`. Read [D02](../fixtures/D02-equipment.md) and look at the
existing equipment report pages in the baseline app.

## Brief

**Situation.** Employees can already report a lost or damaged laptop. The IT
desk has no way to act on those reports inside Northstar Desk, so decisions
are made in chat and the reporter never hears back.

**Required behavior (to be planned, not built).**

- An IT desk member can see open equipment reports, oldest first.
- For each report, the IT desk records one decision: replacement, repair, or
  no action, with a short note.
- The reporter can see the decision and note on their report.
- Reports without an asset number are visibly flagged in the IT desk list.

**Acceptance criteria for the plan.**

- At least three slices, each with an observable result and a check that
  could prove it (a test, a command, or a manual step).
- The files or areas each slice touches.
- A list of open decisions the brief does not settle, such as who counts as
  the IT desk and whether a decision can be changed.
- No changes to application code.

**Out of scope.** Implementation, notifications, and asset inventory.

## Path A — on your own

Timebox 30–45 minutes. Write the plan in a private note using the same
headings as the Plan section of `ai-harness/templates/workspace.md`.

## Path B — via the harness

```text
Use plan-work for curriculum/tasks/02-plan-dont-build.md. Propose verifiable
slices and list open decisions. Stop after planning.
```

Open `.ai-workspace/tasks/02/workspace.md` and read the plan there. Then push
on it:

```text
Explain why the slices are in this order. Which slice could be shipped alone,
and which depend on an open decision?
```

Edit the plan in the workspace yourself where you disagree. The plan is yours;
the agent drafted it.

**Watch for.** Slices without a concrete check, checks that only restate the
slice, and open decisions the agent quietly resolved instead of listing.

## Path C — both

Write your plan first. Then run path B and compare the two: decisions only
one of you raised, slice boundaries, and checks.

## Done when

- A plan meeting the acceptance criteria exists.
- You have made at least three changes to the agent's draft (path B or C) and
  can give a reason for each.
- `git status` shows no application code changes.

## Debrief

1. Which open decision would have caused the most rework if made wrongly
   during implementation?
2. What makes a slice "verifiable" rather than just "small"?
3. The plan sits in an ignored file. How would you share it with a reviewer
   without committing the workspace?
