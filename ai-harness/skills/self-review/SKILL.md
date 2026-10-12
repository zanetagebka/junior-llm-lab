---
name: self-review
description: Review the current task diff or a specified PR against its requirements, verify concrete findings, and record what was reviewed before publication.
---

# Self review

Read [the shared contract](../../references/workflow.md).

Resolve the task, comparison base, authorship, and files under review. Include
relevant committed, staged, unstaged, and untracked work. Read earlier review
findings and PR discussions when available; check fixes against the actual
tree rather than relying on an author's reply. Missing PR access does not
prevent local review. Report upstream drift separately from defects.

Check acceptance coverage, plan drift, contracts across layers, error paths,
state transitions, concurrent or duplicate operations, authorization, and
data handling when the diff reaches those areas. Include relevant documented
project risks. Tests establish behavior, not semantic correctness by themselves.
Require concrete inputs and consequences for a defect; label unresolved
questions as questions. Do not pad the report with generic style suggestions.

Run relevant checks when needed to establish a finding. Do not destructively
revert the author's code to test a hypothesis; use an isolated copy if needed.
Use configured review tools only when available and proportionate to the diff.
Delegation is optional and requires authorization from the session or host;
all reviewers return findings and publish nothing.

Merge duplicate findings and show the report before applying fixes:

- High: broken real path, security issue, or data loss.
- Medium: incorrect edge case or silent wrong behavior.
- Low: a concrete maintainability or clarity issue worth addressing.

Record the base, HEAD, working-tree scope, checks, findings, and dispositions
in the task workspace or a linked review record. After changes, recheck the
affected findings and update the scope; old clean reviews do not transfer to
new content. Fix only when the task or current request authorizes those edits;
reviewing someone else's work does not authorize rewriting it.

Finish with findings or a clear review result and its limits. No PR comments,
review verdicts, requests for review, merges, or messages are posted by this
local workflow.
