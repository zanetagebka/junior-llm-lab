# Task 04 — Reliability and Failure States

**Module 3 — Reliability and context**

**Lovable PoC:** Create controls that simulate success, timeout, 401, 429, 500, malformed JSON and empty model output. Design distinct user states.

**Ruby:** Implement those failure boundaries and tests. Decide retryable vs non-retryable failures and application-facing error types.

**Compare:** Lovable can display a timeout state without experiencing a real timeout. What must the backend actually detect?

**Gate:** Distinguish network failure, HTTP failure, malformed provider response and valid-but-useless model output.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
