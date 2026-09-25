# Task 07 — Real Ask Flow

**Module 4 — Rails vertical slice**

**Lovable PoC:** Prototype the complete ask experience including pending, answer and provider-failure states. Mark the AI response as simulated unless a safe backend exists.

**Rails:** Reuse the raw model interaction explored in Task 02 behind an explicit service: persisted user message → model call → persisted assistant response → UI. Keep provider code out of model callbacks and controllers. Test with a fake provider; no real key is needed in tests.

**Compare:** Which UI states required new backend states or error handling?

**Gate:** Trace the full real request and justify the service boundary.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
