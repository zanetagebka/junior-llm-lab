# Task 07 — Real Ask Flow

**Module 4 — Rails vertical slice**

## Documentation supplied for the PoC

**Situation:** A Northstar Demo employee who submits a question needs to know whether the request is still being processed, has produced an answer, or has failed. Their submitted question should remain visible in each state.

**Required behavior:** The ask flow has pending, answer, and provider-failure states. A simulated answer must be labeled, and an error must not look like a valid answer. This task does not yet promise that an answer is grounded in the knowledge documents.

**Acceptance check:** Submit a question, show a pending state, then demonstrate both an answer and a provider failure. Identify the data the Rails service must save for each outcome.

**PoC assignment:** Prototype the complete ask experience including pending, answer and provider-failure states. Mark the AI response as simulated unless a safe backend exists.

**Rails:** Reuse the raw model interaction explored in Task 02 behind an explicit service: persisted user message → model call → persisted assistant response → UI. Keep provider code out of model callbacks and controllers. Test with a fake provider; no real key is needed in tests.

**Compare:** Which UI states required new backend states or error handling?

**Gate:** Trace the full real request and justify the service boundary.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
