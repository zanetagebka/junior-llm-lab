# Task workflow

Each task page has the same parts. **Brief** is agent-neutral: it is what a
colleague would hand you, and it is what you hand the harness. **Path A / B /
C** explain how to approach the brief on your own, through the harness, or
both. **Done when** lists the evidence a reviewer will look for.

## 1. Read the brief and pick a path

First check the [setup prerequisites](SETUP.md). The task documents describe
the intended baseline; this documentation update does not supply the app or
starter patches. Report missing setup rather than treating it as verified.

| Path | Use it when | Branch |
|---|---|---|
| A — on your own | You want to practise the underlying engineering, or to set a baseline before trying the harness | `task-NN-solo` |
| B — via the harness | You want to practise delegating, steering, and checking agent work | `task-NN-harness` |
| C — both | You want to see what the harness changes about the work | both branches, solo first |

For path C, do the solo attempt first, or at least write your own plan first.
Reading the agent's output before forming your own view removes most of the
comparison's value.

Start every branch from `main`:

```sh
git switch main
git switch -c task-NN-harness
```

To keep both paths checked out at once, use `worktree-create` (practised in
Task 09) or `git worktree add`.

## 2. Work the task

**Path A.** Use your normal tools. The Learning Agent is available for hints
and debugging without generating your solution:

```text
Use guided-coding to help me investigate this Task NN problem: <observation>.
```

**Path B.** Each task page gives starting prompts. In this repository, an
explicit harness request for a named training task (for example "Use
implement-task for Task 03") authorizes the agent to implement that task's
brief. Operational state lives in the ignored
`.ai-workspace/tasks/NN/workspace.md`; read it while the agent works, not only
at the end.

Watch for three things in every harness task:

1. **Scope.** Did the agent stay inside the brief and the request? A research
   or planning request does not authorize edits.
2. **Evidence.** Is each verification line something that was actually run,
   with its real output? "Should pass" and "Not run" are not passes.
3. **Decisions.** Which choices did the agent make silently that the brief
   left open?

## 3. Verify it yourself

Run the checks the task asks for yourself, at least once, on the final state.
Compare your results with what the agent recorded. A mismatch is a finding
worth writing down, not something to smooth over.

The usual project checks are:

```sh
bin/rails test
bin/rubocop
```

## 4. Debrief

Answer the task's debrief questions in a few sentences. For path C, compare
the two attempts on what was produced, what was caught, how long it took, and
where you had to intervene.

Use [the handoff template](templates/LESSON_HANDOFF.md) for a PR description
or a note to your mentor. At the end of a meaningful session you can record
private reflection:

```text
Use finish-learning-session to record my reflection and next step.
```

Verify the private log and task workspace are ignored before writing them.
Your private learning log and the task workspace stay out of Git. Share only
what you choose to put in the handoff.

## Sharing work

Open pull requests against **your fork's** `main`, never the upstream
repository. Task 08 covers this in detail, because `gh pr create` in a fork can
default to the upstream repository.
