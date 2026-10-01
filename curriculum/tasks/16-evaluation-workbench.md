# Task 16 — Evals

**Module 9 — Quality and operational risk**

## Documentation supplied for the PoC

**Situation:** The team needs repeatable evidence when a prompt or retrieval change appears to improve the Knowledge Assistant. A dashboard must show what was checked, not only a single aggregate score.

**Required behavior:** Each case has a question, expected source or key facts, and visible pass/fail dimensions. The same cases can be compared before and after a change. Any score without a real evaluator is labeled as sample data.

**Acceptance check:** Show one passing and one failing fixture-based case, then compare two versions on the same case set. Explain which displayed judgments would require an evaluation runner.

**PoC assignment:** Prototype an evaluation dashboard with test cases, expected source/key facts, pass/fail dimensions and before/after comparison.

**Ruby/Rails:** Create a versioned eval dataset and runner. Measure retrieval success, key-fact coverage, grounding/source support and relevant format checks. Use the runner to compare at least two prompt versions on the same dataset and configuration. Record the prompt diff, hypothesis and evidence-based decision.

**Compare:** Which dashboard numbers are backed by real measurement and which would be decorative without an evaluator?

**Gate:** Use the eval set to identify at least one real weakness instead of merely reporting a score.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
