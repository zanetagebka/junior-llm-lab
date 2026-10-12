# LLM Lab harness adapter

- Training tasks live in `curriculum/tasks/NN-*.md`. For Task NN, use
  `.ai-workspace/tasks/NN/workspace.md` for operational state.
- Check `curriculum/SETUP.md` before assuming the baseline app or starter
  patches exist. Verify workspace privacy with `git check-ignore` before writing.
- Each task starts from `main`. Never base a task branch on another task's
  branch unless the task page says so (Task 09 stacks B on A).
- An explicit request naming a training task and a harness skill authorizes
  that skill's work for the task's brief. Honor the involvement level named in
  the request or on the task page; otherwise use the shared default.
- Treat the task page's Brief as the source and its acceptance criteria as the
  definition of done. Path, Watch for, and Debrief sections are guidance for
  the learner, not requirements to implement.
- Project checks: `bin/rails test` and `bin/rubocop`. Report real output.
- Use only fictional data. Never write provider keys or other secrets into the
  workspace, commits, logs, or PR bodies.
- Harness maintenance is tooling work; keep `learning-agent/` unchanged. Run
  runtime helper tests only when that helper package is actually present;
  this documentation update supplies instructions, not the context helper.
