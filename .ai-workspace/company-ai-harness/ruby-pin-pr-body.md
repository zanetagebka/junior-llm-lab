Adds a reusable AI harness for taking a task brief through research, planning, implementation, verification, review, and PR preparation. LLM Lab supplies its mentoring rules through project configuration; the existing Learning Agent keeps its original three skills and two scripts.

- Add eight agent-neutral skills, a shared workflow contract, and private resumable task workspaces.
- Add a guarded local Git context helper, with integration tests and CI coverage. It disables optional index writes, lazy fetches, monitor hooks, and signature checks; active clean/process filters make status unknown. Submodule changes and symlinked templates are excluded.
- Document the seven-step first-use flow with prompts for every skill, application setup, both toolkits' roles, and manual setup in other projects.
- Pin Ruby to 4.0.6 for the project and CI.

### Verification

The checks below were run on Ruby 3.3.4. Checks under Ruby 4.0.6 were not run for the requested version-pin-only follow-up.

- Tooling tests: 26 runs, 105 assertions, no failures or errors.
- Rails starter health test: 1 run, 1 assertion, no failures or errors.
- RuboCop: both tracked harness Ruby files pass.
- All eight skill manifests validate; Markdown links, prompt coverage, and relative skill registrations checked.
- Learning Agent files match the base; private task workspaces remain ignored.

A curriculum lesson pilot and cross-project trials remain to be run.
