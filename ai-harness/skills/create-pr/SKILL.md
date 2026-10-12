---
name: create-pr
description: Prepare or create a pull request with scoped commits, the correct base, repository conventions, observed verification, and a concrete title and body.
---

# Create PR

Read [the shared contract](../../references/workflow.md).
Use `scripts/context.rb <host-path>` for local Git and template context.

## Prepare the concrete result

Resolve whether the user requested a draft for inspection or actual PR
creation. “Prepare a PR description” creates an artifact; “create/open a PR”
or “deliver this task through a PR” requests scoped commits, normal push, and
creation. Honor existing authorization without asking again.

Read the task spec, plan, final diff, review, and observed checks. Resolve the
base from the requested/configured stacked base or the forge's default branch;
unknown is not `main`. Use repository branch and commit conventions; conventional
commits apply only when the repo uses them. Create a feature branch when needed
before committing; preserve an existing intended branch. Detached HEAD or an
ambiguous branch requires resolution, not guessed publication.

Identify the exact task file set, including any relevant staged changes.
Do not include unrelated staged or dirty files, private workspace state,
secrets, or personal learning logs. When existing staged changes belong to
another task, preserve them and use a scoped commit or isolate this task.
Do not use `git add .` or `git add -A`.

Compose the title around the resulting behavior. Use the project's selected
PR template, or a concise problem/change/verification body with the task link
when available. Fill facts from evidence; leave unknown checks unconfirmed.
When several templates exist, choose the one matching the request or ask.

Write the exact body to an ignored task artifact and show the title, body,
base, branch, file set, and verification before execution. Request a final
decision only when the host's workflow or permissions require one.

## Publish when requested

Check the active forge CLI's access to the host repository without reading or
printing tokens or switching accounts. If it cannot authenticate, keep the
draft and report what is missing. GitHub uses `gh`; other forges use the
project-configured available tool. No mandatory GitHub account for preparation.

Commit the scoped changes when needed, then use a normal push. An existing
remote branch is not itself a reason to ask again: check divergence and proceed
when the push is a safe fast-forward. Resolve divergence without force-pushing.
Check for an existing PR for this branch before creating another; update it
only when the request includes that action.

For GitHub, run `gh pr create` with explicit `--base`, `--head`, `--title`, and
`--body-file`; use `--draft` when requested or configured. Do not place multiline
bodies inline in shell commands. Record the actual URL after success. Do not
merge, change tracker state, notify teammates, or request reviewers as a side
effect of PR creation.
