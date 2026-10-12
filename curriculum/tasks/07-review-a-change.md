# Task 07 — Review a change you didn't write

**Level 3 · Quality gates** · Harness focus: `self-review`,
`writing-code-comments` · Size: 2–3 h

## Why this task

An agent's review is a second opinion, not a verdict. This task gives you a
change written by someone else, with real problems in it, and asks you to
review it, use the harness review, and decide which findings are true.

## Starting point

```sh
git switch main
git switch -c task-07-review
git apply curriculum/starters/07-csv-export.patch
```

The patch leaves the change uncommitted in your working tree, as if a
colleague had handed you their branch. Do not read its commit history or
search for answers. The point is to find the problems yourself.

## Brief

**The change claims to implement:**

> Managers can download their team's expense claims as a CSV file from the
> claims list. The file has one row per claim with the employee name, purchase
> date, amount, description, and approval status. Only a manager's direct
> reports' claims are included. Employees who are not managers do not see the
> download.

**Your job.** Review the change against that requirement and the existing
code. For each finding, record:

- what is wrong, with file and line;
- severity: must fix, should fix, or nit;
- evidence: a reproduction, a failing test, or a reasoned reading of the code.

Then fix the most severe finding, with a test that would have caught it.

**Acceptance criteria.**

- A findings list in the format above.
- At least one must-fix finding fixed, with a test that fails without the fix.
- A re-review of the fixed state, recorded against the new revision.

**Out of scope.** Rewriting the feature. Fix one finding properly instead of
patching all of them roughly.

## Path A — on your own

Timebox 45 minutes for the review. Read the diff (`git diff`, `git status` for
new files), run the tests, and try the feature in the browser as different
employees.

## Path B — via the harness

```text
Use self-review for the current changes against the requirement in
curriculum/tasks/07-review-a-change.md.
```

```text
Use writing-code-comments to review comments touched by this change.
```

Triage every harness finding as **confirmed**, **false positive**, or
**unsure**, and say how you decided. Then fix one must-fix finding:

```text
Fix <finding> with a test that fails before the fix, then use self-review
again on the updated changes.
```

**Watch for.** Findings with no evidence. Findings that are true but
irrelevant to the requirement. A second review that reuses the first review's
conclusions instead of looking at the new revision.

## Path C — both

Review on your own first and save your list. Then run path B. Compare: what
you found that the harness missed, what it found that you missed, and its
false positives.

## Done when

- The acceptance criteria are met.
- Each harness finding is triaged (path B or C).
- You can explain the most severe problem to the "author" in two sentences.

## Debrief

1. Which problem would have caused the most damage in production, and why?
2. What did the harness miss, and why might it have missed it?
3. How did the review record what was reviewed, and why does that matter
   after further edits?
