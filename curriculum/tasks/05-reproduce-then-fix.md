# Task 05 — Reproduce, then fix

**Level 2 · Steering** · Harness focus: bug workflow, a `step-review`
checkpoint after reproduction · Size: 2–3 h

## Why this task

A fix without a reproduction proves nothing. The harness contract says to
reproduce a bug before fixing it when practical; this task makes you check
that it really did, and that the failing test fails for the right reason.

## Starting point

Branch from `main`. Read [D01](../fixtures/D01-expenses.md) and the expense
claim validations in the baseline app.

## Brief

**Bug report from Finance.**

> Two problems with expense claim submission. First, a claim submitted exactly
> 30 days after the purchase date is rejected, but the policy says claims are
> accepted within 30 days. Second, someone submitted a claim with a purchase
> date next week and it was accepted.

**Expected behavior.**

- A claim submitted on day 30 after purchase is accepted.
- A claim submitted on day 31 is rejected with a clear validation message.
- A claim with a purchase date in the future is rejected with a clear
  validation message.

**Acceptance criteria.**

- For each of the two problems, a test that fails on `main` is written first,
  and its failing output is recorded before any fix.
- After the fix, those tests pass, as do the full suite and RuboCop.
- The diff contains no unrelated changes.

**Out of scope.** Other validation rules and changes to the 30-day policy.

## Path A — on your own

Write the failing tests first and save their output. Find the cause, fix it,
and re-run.

## Path B — via the harness

```text
Use implement-task for curriculum/tasks/05-reproduce-then-fix.md with
step-review involvement. First checkpoint: stop after you have failing tests
that reproduce both problems, and show me the actual failure output.
```

At the checkpoint, read the failing tests and the output. Ask yourself whether
each test fails because of the bug, or for some other reason such as a typo,
a missing fixture, or a wrong expectation. Only then let it continue:

```text
The reproduction is correct. Continue with the fix and verify it.
```

**Watch for.** A "reproduction" that was never run. A test that would also
pass with the bug still present. A fix that changes the test's expectations
instead of the code. Date and time edge cases: what does "day 30" mean around
midnight or in a different time zone?

## Path C — both

Do path A first, keeping your failing output. Then run path B and compare the
root cause each of you identified.

## Done when

- The failing output from before the fix is recorded (workspace or handoff).
- The acceptance criteria are met.
- You can state the root cause of each problem in one sentence.

## Debrief

1. What was the root cause, and how did the failing test point to it?
2. How did you confirm the test failed for the right reason?
3. Was the step-review checkpoint worth the interruption here? When would it
   not be?
