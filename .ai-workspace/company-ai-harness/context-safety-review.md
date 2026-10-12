# Context helper safety follow-up

- Reviewed revision: 15839eb261014f8c784401f0eb6bc8f6bf6a4a01 plus the four files below.
- Finding: ordinary Git status can refresh the index and invoke configured file monitors or clean filters; object traversal can fetch missing promisor objects. A template directory symlink can point beyond the host repository.
- Fix: shared guarded Git runner, active-filter attribute check and skipped status, explicit unknown fields, submodule exclusion, and symlink rejection. Full remote ref names avoid option interpretation.
- Validation: 30 tests / 125 assertions pass; affected Ruby files pass lint; documentation links and diff whitespace checks pass. A marker-based fixture proves lazy fetching is blocked and would occur without the guard.
- Limits: metadata helper assumes trusted Git; it is not a sandbox. Git must support --no-lazy-fetch. Unavailable paths are unknown; no unguarded retry.
- Scope: ai-harness/README.md, ai-harness/references/workflow.md, ai-harness/scripts/context.rb, ai-harness/test/harness_test.rb.
- Existing Learning Agent and unrelated curriculum edits are excluded.
- Publication: follow-up to existing draft PR #3, continuing the user's authorization to commit and push the harness changes.

## Publication result

- Commit: 895802bc4d2288bf6be0995a2683d87344fea308
- Pushed to codex/company-ai-harness.
- Existing draft PR #3 verified open with the new commit and updated verification text.
- PR: https://github.com/zanetagebka-lli/junior-llm-lab/pull/3
- Learning Agent remains unchanged; four unrelated curriculum edits remain local.
