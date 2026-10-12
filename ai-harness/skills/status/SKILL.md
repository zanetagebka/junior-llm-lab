---
name: status
description: Report the current task workspace, branch, verification, and available PR or ticket status with the next unresolved action; perform no mutations.
---

# Status

Read [the shared contract](../../references/workflow.md), the current task
workspace, and `scripts/context.rb <host-path>`.

Gather available read-only PR and task-source state with the project's forge
or tracker tools. These integrations are optional: mark unavailable sources
as unknown instead of failing local status or inferring remote state. Do not
read tokens, switch accounts, fetch code, merge, rebase, run checks, or publish
as part of the report. Report whether a default/base is locally established.

Show a compact table: task and phase, branch/base, dirty files, upstream
ahead/behind (local snapshot), latest observed verification and its revision,
PR URL/state when available, ticket state when available, and the next action.
Distinguish a stale local snapshot from a fresh remote read and task completion
from missing evidence. Recorded verification applies to its recorded code.

Suggest the one next step justified by the evidence. Do not silently execute
status repairs or make successful CI equivalent to a clean code review.
