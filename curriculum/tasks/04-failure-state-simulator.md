# Task 04 — Reliability and Failure States

**Module 3 — Reliability and context**

## Documentation supplied for the PoC

**Situation:** A person asking a question needs a useful response even when the provider does not return a usable answer. Different failures require different explanations and next actions.

**Required behavior:** The prototype can simulate success, timeout, authentication failure, rate limiting, server failure, malformed JSON, and an empty model output. It must show which state occurred without treating all failures as a generic empty answer.

**Acceptance check:** Trigger a timeout, a 429 response, and an empty model output. The reviewer should see distinct states and know whether retrying, waiting, or reporting the problem makes sense.

**PoC assignment:** Create controls that simulate success, timeout, 401, 429, 500, malformed JSON and empty model output. Design distinct user states.

**Ruby:** Implement those failure boundaries and tests. Decide retryable vs non-retryable failures and application-facing error types.

**Compare:** Lovable can display a timeout state without experiencing a real timeout. What must the backend actually detect?

**Gate:** Distinguish network failure, HTTP failure, malformed provider response and valid-but-useless model output.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
