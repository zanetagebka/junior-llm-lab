# Company AI work harness

A reusable skill package for taking software tasks from a real brief through
research, planning, implementation, verification, review, and a pull request.
It is for engineers across projects. LLM Lab is the first pilot, with
its mentoring rules supplied by project configuration rather than the core.

## Choose a skill

| Skill | When to use it | Expected result |
|---|---|---|
| [config-check](skills/config-check/SKILL.md) | First use in a repository, or a setup problem | Read-only report on instructions, registration, workspace privacy, Git context, and prerequisites |
| [plan-work](skills/plan-work/SKILL.md) | Explore a task and inspect the approach before implementation | Requirements, file responsibilities, ordered slices, checks, and unresolved decisions saved for resuming |
| [implement-task](skills/implement-task/SKILL.md) | Start or resume implementation from a brief, issue, or existing plan | Research, planning, implementation, verification, review, and PR preparation within the requested scope |
| [self-review](skills/self-review/SKILL.md) | Check current changes or a PR against requirements | Concrete findings, observed checks, and a record of the reviewed revision and scope |
| [create-pr](skills/create-pr/SKILL.md) | Prepare a PR for inspection, or explicitly publish the agreed changes | Proposed file set, base, branch, title, and body; a PR URL when creation is requested |
| [status](skills/status/SKILL.md) | Resume a session or check progress | Task phase, branch, recorded verification, available PR state, and the next unresolved action |
| [worktree-create](skills/worktree-create/SKILL.md) | Work on a task in an isolated checkout | A new or reused worktree with the intended branch and base |
| [writing-code-comments](skills/writing-code-comments/SKILL.md) | Review or improve comments affected by the current change | Comment findings, or scoped edits when improvement is requested |

No skill assumes Rails, a curriculum, an operating system, a company account,
a ticket prefix, or a default branch called `main`. Tracker and forge integrations
are optional for local work. The initial publication path is documented for
GitHub's `gh`; other forges use an available project-configured tool.

## First-use flow: seven steps in LLM Lab

Start a fresh agent session in the host repository root. Shared `AGENTS.md`
instructions route requests to the canonical skills; hosts that discover
`.agents/skills/` can also use the project links. If routing is not installed,
follow [Install in another project](#install-in-another-project) first.

Use the skill name in a plain-language request. The example below uses
[Task 03](../curriculum/tasks/03-first-hand-off.md). Hosts that do not
discover skills can read the linked `SKILL.md` files explicitly. Replace angle
bracket placeholders with your actual slice, observation, or task reference.

These seven steps make each result easy to inspect during the first test.
The lab's [Learning Agent](../learning-agent/README.md) supplies onboarding,
mentoring, and session closure; its three skills and two scripts remain a
separate toolkit.

This checkout contains the workflow documentation. The Northstar Desk app,
exercise patches, optional context helper, and helper tests are separate setup
prerequisites; see the [current setup checklist](../curriculum/SETUP.md).
Skill registration and workspace ignore rules must be verified before use.

### 1. Check the repository setup

```text
Use config-check to check this repository's harness setup.
```

Inspect the reported instructions, skill registration, workspace privacy, and
Git context. The check reports mismatches; request a specific setup fix if needed.

### 2. Start learning onboarding, if needed

```text
Use start-learning-project to establish my learning focus for Task 03.
```

Use this for your first learning session or when usable learning state is missing.
The agent asks about your goal, existing knowledge, and a small session outcome,
then creates missing private learning state while preserving existing notes.

### 3. Plan the task

```text
Use plan-work for curriculum/tasks/03-first-hand-off.md. Help me
frame the task and propose verifiable slices. Stop after planning.
```

Expect requirements, proposed slices, checks, and unresolved questions saved in
the private task workspace. Follow the [task workflow](../curriculum/WORKFLOW.md):
read the brief, choose a path, and check the acceptance criteria. Planning
separately is optional for an autonomous implementation request.

### 4. Work through one approved slice

```text
Use implement-task for Task 03. Implement only <named slice> from the approved
plan and verify that slice.
```

For the harness path, an explicit named-task request authorizes its brief at
the requested involvement level. Expect scoped changes, actual check results,
and an updated next action. For coaching on your own attempt, use:

```text
Use guided-coding to help me investigate this Task 03 problem: <observation>.
```

### 5. Review

```text
Use self-review for the Task 03 changes against its acceptance criteria.
```

Expect concrete findings and verification evidence for the current code.
If fixes are needed, request them and review the affected changes again.

### 6. Inspect the PR preparation

```text
Use create-pr to prepare a PR description for the agreed Task 03 changes.
```

Expect the proposed file set, branch, base, title, body, and observed checks.
Preparing the description stops at this local artifact. To test actual
publication when ready, request:

```text
Use create-pr to create a draft PR for the agreed Task 03 changes against my fork's main.
```

That request includes scoped commits, a normal push, and PR creation. The result
includes the PR URL; merge, deployment, and teammate messages are separate actions.

### 7. Close the learning session

```text
Use finish-learning-session to record my reflection and next step.
```

Use this when recording a meaningful session. The agent asks for your reflection
and an understanding check, then updates the private learning log.
Operational task progress lives in `.ai-workspace/tasks/03/workspace.md`.
Personal reflection stays in `learning-agent/docs/LEARNING_LOG.local.md`;
shareable task handoffs use your confirmed words.

## Use the flow in ordinary company projects

Use steps 1 and 3–6 with a real task file, issue reference, or supplied brief
and acceptance criteria. Learning onboarding and session closure above
belong to this training repository. If issue access is unavailable, supply
the task text directly.

For ordinary implementation, use:

```text
Use implement-task for <task-brief>. Implement the agreed plan, verify the
result, and stop at PR preparation.
```

`implement-task` coordinates research, planning, implementation, review, and PR
preparation, so separate planning and review prompts are optional. Work defaults
to autonomous execution within repository rules. Request `plan-review` to inspect
the plan before coding or `step-review` for agreed checkpoints.

## Supporting skills during a task

Use an isolated checkout when requested or when unrelated work makes the current
checkout unsuitable:

```text
Use worktree-create to create or reuse an isolated checkout for <task-brief>
using <base branch>.
```

Run this before implementation, then start the agent in the returned directory.
A new worktree contains committed files; if the harness is still uncommitted,
explicitly set it up in that checkout before using the workflows there.

For comments affected by a change:

```text
Use writing-code-comments to review comments touched by this task.
```

To request edits, use "improve" instead of "review". This workflow concerns the
touched comments; `self-review` checks the broader behavior and requirements.

## Install in another project

LLM Lab includes project routing instructions. Skill registration is a
separate setup action. To connect
a copied package in another Git repository, run its installer from that root:

```sh
ruby ai-harness/scripts/install.rb --dry-run
ruby ai-harness/scripts/install.rb
```

The installer preserves host instructions, checks for conflicting skill
registrations before writing, adds relative skill links, and ignores private
task workspaces. Start a new agent session after installation.

For manual installation:

1. Copy the tracked `ai-harness/` directory into the target Git repository.
2. Add routing to its existing `AGENTS.md`, preserving project instructions:

   ```markdown
   Use the workflows in ai-harness/skills/ when applicable. Read
   ai-harness/references/workflow.md before running a workflow.
   See ai-harness/README.md to choose a skill and find example prompts.
   ```

3. Add `/.ai-workspace/tasks/` to the target's `.gitignore` before saving
   private plans or PR drafts.
4. For agents that discover `.agents/skills/`, create relative links from
   `.agents/skills/<skill>` to `../../ai-harness/skills/<skill>`. Preserve
   existing skills; resolve name conflicts before adding links. Agents can
   also read the canonical skill paths directly.
5. Add only the [project adaptations](#project-adaptations) that apply, then
   run `config-check`.

The optional context helper and its tests are separate tooling assets. They
are not included in this documentation update. Skills can use equivalent
read-only Git queries through the coding agent's available tools.

The package uses shared Markdown instructions and `SKILL.md` manifests. Agent
command syntax and discovery behavior depend on the host; plain-language
requests and explicit file paths are the common entry points. Once the pilot
is accepted, this directory can move to a dedicated company repository.

## Project adaptations

Tracked project instructions belong in `AGENTS.md` and optionally
`.ai-workspace/configs/harness.md`. A skill can also read a same-named config
such as `create-pr.md`. These are simple Markdown standing instructions; no
parser or setup questionnaire is required. Examples:

```markdown
# Harness project rules

## Customization

- Use plan-review involvement for behavior changes.
- Use the repository's test commands from CONTRIBUTING.md.
- New work branches from develop; stacked changes name their explicit parent.
- Create draft PRs with the repository's existing template.
```

Only configure real project choices. Keep credentials and private personal
reflection out of tracked config. Missing configuration uses the core defaults.
The pilot's [configuration](../.ai-workspace/configs/harness.md) adds the lab's
learning rules; those files are not part of the portable package.

## Resuming and evidence

In a fresh session, start with:

```text
Use status for <task>. Identify the next unresolved action.
```

Inspect the saved progress and current Git state, then continue with:

```text
Use implement-task to resume <task> from its existing workspace.
```

In the lab, continue only the currently authorized lesson slice. `status` itself
reports progress without modifying code, running checks, or publishing.

Operational context normally lives in the ignored
`.ai-workspace/tasks/<task-id>/workspace.md`, created from the package template.
It holds source requirements, decisions, slices, phase checkboxes, observed
verification, review findings, a PR draft, and the next action. On resume, the
agent loads state first and compares it with actual code rather than starting
over. Project adapters may choose another ignored workspace location.

When supplied, `ruby ai-harness/scripts/context.rb .` is intended to emit a
read-only JSON snapshot of local Git context. Its contract covers non-main
default branches, staged/unstaged/untracked
paths, renames, detached HEAD, drift against local upstream refs, and local
PR templates. An unknown default is left unknown. Git runs with optional index
writes, lazy fetching, file-monitor hooks, and signature checks disabled.
The helper requires Git with `--no-lazy-fetch` support; an unsupported Git fails
without retrying unguarded commands.

To avoid running configured clean/process filters, it checks tracked-file
attributes and skips status when those filters are active. Changed files are
then reported as unknown, with a reason.
Submodule changes and symlinked PR templates are excluded from this snapshot.
It prints metadata and paths, with no remote URLs, tokens, or file contents.
Use it in a trusted Git environment; it is a small metadata helper, not a sandbox
for arbitrary repositories or executables.

## Relationship to plugin_marketplace

This is an adapted port of the inspected LLI `plugin_marketplace-main` skill
set, packaged as shared repository instructions and skills. The original
Jira workflow becomes `implement-task`, retaining the research → plan → implement
→ review → PR sequence while accepting a local brief or issue as its source.

| Source workflow | Ported behavior and changes |
|---|---|
| `implement-jira-ticket` and its phase files | Same resumable workspace/phase flow generalized into `implement-task`; no Jira skill shipped |
| `self-review` | Requirements, working-tree scope, severity, prior findings, and review record; optional review tools |
| `create-pr` / `create-pr-context.sh` | Convention/base/template detection and concrete PR artifact; scoped staging and explicit delivery intent |
| `status` family | One portable task/branch/PR/ticket report; unavailable integrations remain unknown |
| `worktree-create` | Reuse real task branches and resolve stacked bases; native Git instead of macOS editor automation |
| `config-check` | Project alignment checks; no automatic account/token borrowing |
| `writing-code-comments` | Accurate contracts and constraints; language-specific rules come from the project |

The original shell/editor registries, Jira/Qase-specific status grammar, fixed
model choices, mandatory full code listings, and blanket test-first deletion
rule were not copied. The package does not depend on the source checkout being
present. Core skills contain no lab-specific task paths or lesson gates.

## Validate the documentation and existing tools

```sh
ruby learning-agent/test/install_test.rb
ruby learning-agent/test/publish_learning_summary_test.rb
```

CI checks local Markdown links and task structure. The commands above test the
existing Learning Agent tools. Helper runtime tests and starter-patch checks
must be supplied with those assets separately. Live task pickup, publication,
and agent decision quality need an authorized pilot task; documentation checks
do not establish them.
