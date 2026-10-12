# Task 08 — Ship only what you mean

**Level 3 · Quality gates** · Harness focus: `create-pr`, scoped staging,
publication authority · Size: 1–2 h

## Why this task

Most bad PRs are not bad code. They contain a debug line, a local config
tweak, or half of another change. This task gives you a messy working tree and
asks you to publish exactly one change as a draft PR to your fork, leaving
everything else untouched.

## Starting point

```sh
git switch main
git switch -c task-08-severity-filter
git apply curriculum/starters/08-messy-checkout.patch
```

After applying, your working tree contains a finished, tested feature (an
incident list filter by severity) mixed with unrelated local edits and a
scratch file. Run `git status` and `git diff` to see the state.

## Brief

**Required outcome.** A draft pull request in **your fork** that:

- contains only the incident severity filter and its tests;
- targets your fork's `main`;
- uses the repository's PR template, with a title, a short description, and
  verification results you actually observed.

**Also required.** After the PR is created, every unrelated edit and the
scratch file are still in your working tree, unchanged and uncommitted.

**Acceptance criteria.**

- The PR's file list contains only severity-filter files.
- The PR's base repository is your fork, not the upstream repository.
- `git status` after publishing still shows the unrelated edits.
- No blanket staging (`git add .`, `git add -A`, `git commit -a`) was used.

**Out of scope.** Changing the feature, or cleaning up the unrelated edits.

## Path A — on your own

Stage by path or hunk (`git add -p`), commit, push, and open a draft PR with
`gh pr create --draft --repo <your-user>/<your-fork>`, or through the GitHub
web interface.

## Path B — via the harness

Prepare first, publish second:

```text
Use create-pr to prepare a PR description for the incident severity filter
changes.
```

Check the proposed file set, base, branch, title, and body. Correct anything
wrong in plain words. Then:

```text
Use create-pr to create a draft PR for the agreed incident severity filter
changes, against my fork's main.
```

That second request authorizes scoped commits, a normal push, and PR creation.
It does not authorize merging, force-pushing, or messaging anyone.

**Watch for.** `gh` defaulting to the upstream repository in a fork; check the
PR URL before celebrating. The scratch file or a debug line in the proposed
file set. Verification in the PR body that was not run in this session.

## Path C — both

Do path A as far as staging, then save the staged file list with `git diff
--cached --name-only` and your draft PR text. Unstage with `git restore
--staged .` (this keeps your working tree), then run path B. Compare file
lists and PR bodies before publishing either.

## Done when

- The acceptance criteria are met and the PR URL is in your handoff.
- You can show `git status` output from after publication.

## Debrief

1. Which unrelated edit was easiest to include by accident, and why?
2. What exactly did "create a draft PR" authorize, and what did it not?
3. How would you have noticed if the PR had gone to the upstream repository?
