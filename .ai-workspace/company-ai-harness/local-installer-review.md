# Local installer scope review

Request: keep the harness installer local during the lab pilot.

Comparison base / HEAD before edits: 895802bc4d2288bf6be0995a2683d87344fea308.
Branch: codex/company-ai-harness. PR #3 base: harness-publish/main (c0ae788).

Reviewed scope:
- .gitignore: exact ignore for ai-harness/scripts/install.rb.
- ai-harness/scripts/install.rb: removed from index; local bytes preserved.
- ai-harness/test/harness_test.rb: remove only installer require, helper fixtures,
  and four installer tests; nine context tests retained.
- ai-harness/README.md: replace installer commands with manual project setup;
  update test coverage description; seven-step lab flow retained.

No concrete defects found in this scope. Manual routing points at existing
canonical skill instructions, registrations use relative paths, and existing
project skills/instructions must be preserved. Existing lab registrations remain.

Observed checks:
- Combined tooling: 26 runs, 105 assertions, 0 failures, 0 errors, 0 skips.
- RuboCop: two tracked harness Ruby files, no offenses.
- git diff --check: pass.
- README local links, anchors, fence balance, and seven numbered steps: pass.
- Installer SHA-256 unchanged and git check-ignore matches exact rule.
- No tracked harness file references install.rb or HarnessInstaller.
- Learning Agent matches PR base; unrelated curriculum file hashes unchanged.

One initial combined-test invocation named a nonexistent Slack test file and
exited before tests; corrected to publish_learning_summary_test.rb. Lint found
an extra empty line left by test removal; removed and rerun successfully.

Prior evidence remains applicable because those files are unchanged: eight
skill manifests/registrations/prompt coverage and Rails starter health test.
No curriculum lesson or cross-project pilot run. A normal removal commit removes
the installer from the PR's final tree; earlier branch commits retain it.

Publication artifact: local-installer-pr-body.md. Title remains
"Add reusable AI task harness and first-use guides". Push is a normal fast-forward
of the existing branch; PR remains draft. No merge or teammate messages.

Publication: committed d5585477d1d4634f46945de90e19ed588cd8d695, fast-forward pushed to harness-publish/codex/company-ai-harness, and PR #3 description updated. Local installer remains unchanged and ignored; final PR tree excludes it. Four unrelated curriculum files remain uncommitted.
