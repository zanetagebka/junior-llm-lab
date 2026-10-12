---
name: worktree-create
description: Create or reuse an isolated Git worktree for a task or existing branch using the intended base without disturbing unrelated work in the current checkout.
---

# Worktree create

Read [the shared contract](../../references/workflow.md) and local context.

Resolve whether the task has an existing branch or PR before deriving a new
name. Reuse that branch; a review worktree must contain the code under review.
Use `git worktree list --porcelain` to find an existing checkout, and return
that path when it already serves this task. Never attach the same branch twice.

For new work, use the requested/configured base. On a feature branch, resolve
fresh versus stacked work when the request does not establish it. Use the
actual default branch, not a hardcoded `main`. Fetch a needed remote ref only
when that read is allowed. Follow the repository's naming convention.

Use an explicit target directory supplied by the user/configuration, or a new
sibling `<repository>-worktrees/<safe-task-slug>` directory. If the directory
already exists without being the intended worktree, stop and resolve it; do
not delete or overwrite it. Use `git worktree add` with a new branch, an existing
local branch, or an explicitly tracked remote branch as appropriate.

Bootstrap with documented project commands within the request's scope. Do not
copy or symlink credentials, `.env` files, personal learning state, databases,
or dependencies by default. Link or copy local configuration only when the
specific files and sharing behavior were requested. If the project's skills
are not yet committed, register the harness in the worktree from this package
only when that setup is requested; do not assume uncommitted files travelled.

Verify the new path and branch. Report base, bootstrap result or `Not run`,
and the next command. Opening an editor is optional and follows the user's
choice; editor availability must not block the worktree. Do not remove other
worktrees or branches, or modify the original checkout's changes.
