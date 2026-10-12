Adds a reusable AI harness for taking a task brief through research, planning, implementation, verification, review, and PR preparation. LLM Lab supplies its mentoring rules through project configuration; the existing Learning Agent keeps its original three skills and two scripts.

- Add eight agent-neutral skills, a shared workflow contract, and private resumable task workspaces.
- Add a portable installer and a guarded Git context helper, with integration tests and CI coverage. The helper disables index refreshes, lazy fetches, monitor hooks, and signature checks; active clean/process filters cause status to be reported as unknown, and symlinked templates and submodule changes are excluded.
- Document the seven-step first-use flow with prompts for every skill, plus application setup and the roles of both toolkits.
- Pin Ruby to 3.3.4 for consistent local setup and CI.

### Verification

- Tooling tests: 30 runs, 125 assertions, no failures or errors.
- Rails starter health test: 1 run, 1 assertion, no failures or errors.
- RuboCop: all three harness Ruby files pass.
- All eight skill manifests validate; installer dry run, Markdown links, prompt coverage, and relative skill registrations checked.
- Learning Agent files match the base; private task workspaces remain ignored.

A curriculum lesson pilot and cross-project trials remain to be run.
