# Task 06 — Stop and resume

**Level 2 · Steering** · Harness focus: the task workspace, `status`, resuming
in a fresh session · Size: 3–4 h, split across two sessions

## Why this task

Real tasks span days, people, and broken sessions. The harness keeps
operational state in a workspace file so work can be picked up later. This
task deliberately interrupts the work and checks whether the resumed agent
compares saved state with the actual code instead of trusting its notes.

## Starting point

Branch from `main`. Read [D03](../fixtures/D03-incidents.md) and the incident
model and page in the baseline app.

## Brief

**Situation.** The on-call engineer must record an incident timeline, but
Northstar Desk only stores the incident itself. Timelines end up in chat and
are lost.

**Required behavior.**

1. On an incident's page, the on-call engineer can add timeline entries. Each
   entry has a time (defaulting to now) and a short description. Entries show
   in time order.
2. When an incident lead is named or changed, a timeline entry recording it is
   added automatically.
3. Once an incident is resolved, its timeline is read-only. No entries can be
   added through the page or the model.

**Acceptance criteria.**

- Tests cover each of the three behaviors, including that a resolved
  incident's timeline rejects new entries at the model level.
- The full test suite and RuboCop pass.

**Out of scope.** Editing or deleting entries, notifications, and the
post-incident review.

## Path A — on your own

Do behavior 1 in one session. Stop. In a later session, before writing
anything, write down from memory where you were. Then check the code and
finish behaviors 2 and 3.

## Path B — via the harness

Session one:

```text
Use implement-task for curriculum/tasks/06-stop-and-resume.md with
step-review involvement. Checkpoints after each of the three behaviors.
```

When behavior 1 is verified at its checkpoint, **close the agent session
completely.** Before the next session, make one small manual change yourself
that affects the work. For example, rename the timeline entry's description
attribute, or add a test the agent did not write. Commit it or leave it
uncommitted; note which.

Session two, in a fresh agent session:

```text
Use status for Task 06. Identify the next unresolved action.
```

Compare the status report with reality. Then:

```text
Use implement-task to resume Task 06 from its existing workspace.
```

**Watch for.** Whether `status` or the resumed run notices your manual change,
or carries on from stale notes. Whether the workspace's "Resume here" section
was precise enough to continue from.

## Path C — both

Do path A, then path B on a separate branch, and compare how well you resumed
from memory with how well the agent resumed from its workspace.

## Done when

- The acceptance criteria are met.
- The status output from session two is saved in the handoff.
- You can say whether the resumed agent detected your manual change, and how
  you can tell.

## Debrief

1. What did `status` get right and wrong about where the work stood?
2. What would you add to the workspace so that a teammate, not just the
   agent, could take over?
3. Where else in your real work would a resumable task record help?
