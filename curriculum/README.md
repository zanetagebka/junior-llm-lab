# Harness training tasks

These twelve tasks teach how to work with the company AI harness
(`ai-harness/`): handing it a brief, steering it, checking what it claims,
and shipping only what you meant to ship. They use a small fictional
application, **Northstar Desk**, so the software problems stay realistic
without needing company code or data.

## Ground rules

**Setup status:** this update contains the task documentation and CI checks;
the Rails application remains the original starter. Task 01 can audit this
checkout. Prepare the [baseline and starter assets](SETUP.md) separately before
running exercises that depend on them.

- **`main` is the intended baseline.** Once prepared, every task starts from `main` and none of them
  needs another task's code. Do not merge task branches into your fork's
  `main`; that keeps every task startable at any time.
- **Order is by complexity, not dependency.** The levels below build harness
  skills gradually. If you already know the basics, start wherever you like.
- **Three ways to do a task.** Do it on your own, do it through the harness,
  or do both and compare. See [the workflow](WORKFLOW.md).
- **Fictional data only.** Use the documents in [fixtures/](fixtures/README.md)
  and the seeded Northstar Desk data. Never paste company code, documents, or
  credentials into a task or an agent session.

## The baseline application

Northstar Desk is the required starting app for a fictional company's internal
requests. It is specified here and will be supplied in a separate implementation
change. The business rules come from the [fixture documents](fixtures/):

| Area | Rule source | Required starting state |
|---|---|---|
| Employees | — | Seeded employees and managers; an "acting as" switcher instead of real login |
| Expense claims | [D01](fixtures/D01-expenses.md) | Create and list claims; approval fields exist |
| Equipment reports | [D02](fixtures/D02-equipment.md) | Employees can report a lost or damaged device |
| Incidents | [D03](fixtures/D03-incidents.md) | Incidents with severity, status, on-call engineer, and lead |
| Vacation requests | [D04](fixtures/D04-vacation.md) | Create and list requests; status field exists, no approval flow |
| Handbook | All fixtures | Read-only page showing the four fixture documents |

The baseline is not perfect. Some tasks rely on that.

## Tasks

| # | Task | Level | Harness focus | Size |
|---|---|---|---|---|
| 01 | [Read before you touch](tasks/01-read-before-you-touch.md) | 1 · Orientation | `config-check`, context helper, research-only scope | 1–2 h |
| 02 | [Plan, don't build](tasks/02-plan-dont-build.md) | 1 · Orientation | `plan-work`, slices, open decisions | 1–2 h |
| 03 | [First hand-off](tasks/03-first-hand-off.md) | 1 · Orientation | `implement-task` (autonomous), reading evidence | 2–3 h |
| 04 | [Approve the plan first](tasks/04-approve-the-plan-first.md) | 2 · Steering | `plan-review` involvement | 3–4 h |
| 05 | [Reproduce, then fix](tasks/05-reproduce-then-fix.md) | 2 · Steering | Bug workflow, `step-review` checkpoint | 2–3 h |
| 06 | [Stop and resume](tasks/06-stop-and-resume.md) | 2 · Steering | Task workspace, `status`, resuming | 3–4 h |
| 07 | [Review a change you didn't write](tasks/07-review-a-change.md) | 3 · Quality gates | `self-review`, `writing-code-comments` | 2–3 h |
| 08 | [Ship only what you mean](tasks/08-ship-only-what-you-mean.md) | 3 · Quality gates | `create-pr`, scoped staging, publication | 1–2 h |
| 09 | [Two tracks at once](tasks/09-two-tracks-at-once.md) | 3 · Quality gates | `worktree-create`, stacked PRs | 3–4 h |
| 10 | [A model behind a boundary](tasks/10-model-behind-a-boundary.md) | 4 · Judgment | Verifying non-deterministic work | 4–6 h |
| 11 | [Make the harness fit](tasks/11-make-the-harness-fit.md) | 4 · Judgment | Project configuration, portability | 2–4 h |
| 12 | [Capstone: from a vague request](tasks/12-capstone-vague-request.md) | 4 · Judgment | Whole flow, chosen involvement, retrospective | 1–2 days |

Sizes assume one path. Doing a task both ways takes roughly 1.5–2 times as long.

## What each level teaches

1. **Orientation.** What the harness reads, where it keeps state, what a
   request does and does not authorize, and how to read its evidence.
2. **Steering.** Choosing involvement (autonomous, plan-review, step-review),
   making it reproduce before fixing, and picking up interrupted work.
3. **Quality gates.** Reviewing critically, publishing exactly the intended
   change, and running parallel or stacked work without collisions.
4. **Judgment.** Work where the agent cannot check its own claims, adapting
   the harness to a team's rules, and owning requirements end to end.

Every task ends with a short debrief. Passing tests show behavior; your own
explanation of what happened, and what you verified yourself, is separate
evidence.
