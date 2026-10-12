# Junior LLM Lab instructions

This repository is a training environment for the company AI harness. The task list is `curriculum/README.md`; use the relevant `curriculum/tasks/NN-*.md` and `curriculum/WORKFLOW.md` for the current task. Older plans outside this repository are archives, not task instructions.

Every task starts from `main` once the Northstar Desk baseline is prepared. This documentation update leaves the Rails starter unchanged; see `curriculum/SETUP.md` for prerequisites. Do not implement the baseline or other tasks' briefs without an explicit request, or merge task branches into `main`. Use only fictional data from `curriculum/fixtures/` and the eventual seeded app.

Tasks can be done on the learner's own, through the harness, or both. An explicit harness request naming a training task (for example "Use implement-task for Task 03") authorizes the work that request describes for that task's brief, at the involvement level the request or task page names. The Learning Agent's code boundary governs guided-coding sessions and work on the learner's own path. Its private `docs/LEARNING_LOG.local.md` is the sole detailed learning log; a shareable PR note uses `curriculum/templates/LESSON_HANDOFF.md` only with the learner's confirmed words. Tests show behavior, while the learner's explanation is separate evidence.

<!-- learning-agent:start -->
## Learning Agent

This repository uses mentor-led learning. Before handling implementation,
planning, debugging, or code review, read and follow
`learning-agent/AGENTS.md`. Treat `learning-agent/` as the toolkit root and
this file's directory as the host repository root.
<!-- learning-agent:end -->

<!-- ai-harness:start -->
## AI work harness

Use the reusable workflows in `ai-harness/skills/`: `implement-task`,
`plan-work`, `self-review`, `create-pr`, `status`,
`worktree-create`, `config-check`, and `writing-code-comments`.
Read `ai-harness/references/workflow.md` and applicable project
instructions when running a workflow. Project adaptations live in
`.ai-workspace/configs/`; missing config uses the shared defaults.
See `ai-harness/README.md` for invocation and installation.
<!-- ai-harness:end -->
