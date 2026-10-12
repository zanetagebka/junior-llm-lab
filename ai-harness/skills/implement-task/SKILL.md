---
name: implement-task
description: Start or resume a software task from a local brief, issue, or ticket; research, plan, implement, verify, self-review, and prepare or create its requested PR.
---

# Implement task

Read [the shared contract](../../references/workflow.md).

## Resolve and resume

Use the task source supplied by the user or an existing task workspace. Read
its actual description and acceptance criteria; fetch a referenced issue with
available read-only tools. If the source is inaccessible, ask for the brief
instead of inventing requirements. Use the recorded spec when it is already
loaded instead of repeating source retrieval.

Load the existing workspace first. On resume, compare its first unresolved
check with the actual code and current Git state; preserve hand-edited notes.
Use the package workspace template when state is missing. Record the source,
scope, base, branch, involvement, and requested publication. Do not create a
new branch when the task already has one; use `worktree-create` when isolation
is requested or the current checkout's unrelated work prevents a safe change.

## Work the to-do

Load each phase only when it is needed:

| Phase | Instructions |
|---|---|
| Research | [references/research.md](references/research.md) |
| Plan | [references/plan.md](references/plan.md), also exposed by `plan-work` |
| Implement | [references/implement.md](references/implement.md) |
| Review | `self-review` in this package |
| PR preparation or requested publication | `create-pr` in this package |

For a research-only or plan-only request, stop after the requested phase.
For implementation, work ordered slices until the requested scope is complete. Update the next
action and evidence as work progresses, and revise the plan when a check
invalidates an assumption. At plan-review or step-review involvement, present
the concrete artifact at the agreed gate. Otherwise continue authorized work.

Finish with the implemented behavior, observed checks, unresolved limits, and
the prepared artifact or created PR URL. Mark only observed completed phases.
When publication was not requested, leave that phase uncompleted and report
the prepared PR draft rather than pushing it.
