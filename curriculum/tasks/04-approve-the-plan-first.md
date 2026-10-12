# Task 04 — Approve the plan first

**Level 2 · Steering** · Harness focus: `plan-review` involvement · Size: 3–4 h

## Why this task

Autonomous mode is fine for small, clear changes. For anything with design
choices, you want to see the plan before code exists. This task practises
reviewing a concrete plan, changing it, and checking that the implementation
follows what you approved.

## Starting point

Branch from `main`. Read [D04](../fixtures/D04-vacation.md) and the vacation
request model and pages in the baseline app.

## Brief

**Situation.** Employees can submit vacation requests, but managers approve
them by message and nobody can see who is away. The policy says a request
appears on the team calendar only after the manager approves it.

**Required behavior.**

- A manager sees pending vacation requests from their direct reports and can
  approve or reject each one.
- A manager cannot act on requests from people who do not report to them, and
  nobody can approve their own request.
- A team calendar page lists approved vacations for the acting user's team,
  grouped by week. Pending and rejected requests do not appear.
- The requester can see whether their request is pending, approved, or
  rejected.

**Acceptance criteria.**

- Tests cover approval, rejection, both authorization rules, and calendar
  contents (approved shown, pending and rejected not shown).
- The full test suite and RuboCop pass.

**Out of scope.** Emergency leave, notifications, editing a decision, and a
graphical calendar. A list grouped by week is enough.

## Path A — on your own

Write a short plan before coding: slices, where authorization is enforced, and
how the calendar query works. Then implement it.

## Path B — via the harness

```text
Use implement-task for curriculum/tasks/04-approve-the-plan-first.md with
plan-review involvement. Wait for my review of the plan before writing code.
```

When the plan arrives, review it properly before replying. **You must request
at least one substantive change** before approving. For example, where the
authorization check lives, how "team" is defined, or how slices are split.
Write down what you changed and why.

After implementation, compare the code with the plan you approved.

**Watch for.** Approving a plan you skimmed. An implementation that drifts from
the approved plan without recording why in the workspace's "Plan changes and
reasons". Authorization enforced only in the view.

## Path C — both

Write your own plan first (path A, planning only). Then run path B and compare
your plan with the agent's before you review it. Implement either version.

## Done when

- The acceptance criteria are met.
- The workspace shows the plan you approved and any later changes with
  reasons (path B or C).
- You can point to the place in the code where each authorization rule is
  enforced.

## Debrief

1. What did you change in the plan, and did the final code honor it?
2. What would autonomous mode have cost or saved on this task?
3. Which part of the plan did you accept without being able to judge it?
