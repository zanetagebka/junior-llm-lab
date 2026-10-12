# AI harness publication review

- Base and pre-commit HEAD: c0ae788e0708624c8b5c497da8824348e59efbef
- Branch: codex/company-ai-harness
- Target: zanetagebka-lli/junior-llm-lab
- Reviewed working-tree scope: the 32 files below; the index was empty.
- Concrete findings: the Ruby version was unpinned. Fixed by pinning 3.3.4 and updating the startup guide.
- Review result: no unresolved defect found in the selected scope.
- Checks: 25 tooling tests / 108 assertions; Rails starter test / 1 assertion; 3 Ruby files pass lint; 8 manifests validate; documentation links, relative registrations, neutral packaging, and installer dry run pass.
- Learning Agent has no diff and still contains 3 skills and 2 scripts.
- Curriculum edits and private learning state are excluded from publication.
- Remaining limit: no curriculum lesson pilot or cross-project trial performed.
- PR body: .ai-workspace/tasks/company-ai-harness/pr-body.md

## File scope

- `.github/workflows/ci.yml`
- `.gitignore`
- `.ruby-version`
- `AGENTS.md`
- `README.md`
- `.agents/skills/config-check`
- `.agents/skills/create-pr`
- `.agents/skills/implement-task`
- `.agents/skills/plan-work`
- `.agents/skills/self-review`
- `.agents/skills/status`
- `.agents/skills/worktree-create`
- `.agents/skills/writing-code-comments`
- `.ai-workspace/configs/create-pr.md`
- `.ai-workspace/configs/harness.md`
- `ai-harness/README.md`
- `ai-harness/references/workflow.md`
- `ai-harness/scripts/context.rb`
- `ai-harness/scripts/install.rb`
- `ai-harness/skills/config-check/SKILL.md`
- `ai-harness/skills/create-pr/SKILL.md`
- `ai-harness/skills/implement-task/SKILL.md`
- `ai-harness/skills/implement-task/references/implement.md`
- `ai-harness/skills/implement-task/references/plan.md`
- `ai-harness/skills/implement-task/references/research.md`
- `ai-harness/skills/plan-work/SKILL.md`
- `ai-harness/skills/self-review/SKILL.md`
- `ai-harness/skills/status/SKILL.md`
- `ai-harness/skills/worktree-create/SKILL.md`
- `ai-harness/skills/writing-code-comments/SKILL.md`
- `ai-harness/templates/workspace.md`
- `ai-harness/test/harness_test.rb`
