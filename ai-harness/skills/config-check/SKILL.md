---
name: config-check
description: Check a project's AI harness registration, Git context, workspace privacy, runtime instructions, and optional forge access without changing accounts or settings.
---

# Config check

Read [the shared contract](../../references/workflow.md) and run the package's
`scripts/context.rb <host-path>` for local Git context when the helper exists.
If it is absent, report it and collect equivalent read-only Git evidence.

Check the applicable instruction files, shared project skill links, ignored
workspace destination, runtime/build requirements from project
files, and any configured prerequisites. Compare configured expectations with
observed facts; do not invent an expected company account, email, editor
profile, or version manager.

When forge access matters and its CLI is available, use a read-only repository
probe to check the active identity's access. Do not read credentials, print
environment variables, switch accounts, or try borrowing another account's
token. Missing Jira or forge tools do not block local task planning.

Show check, observed result, expected value when defined, and a concrete next
action for each mismatch. Report unpinned runtimes as unpinned. This workflow
is read-only; an explicit request to fix setup permits the named local fixes.
