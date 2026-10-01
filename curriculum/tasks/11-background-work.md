# Task 11 — Async Work

**Module 6 — Actions and slow work**

## Documentation supplied for the PoC

**Situation:** Some AI operations take long enough that a user cannot wait on a blank page. They need to know whether work has started, is still running, is being retried, has completed, or has failed.

**Required behavior:** The PoC distinguishes immediate acknowledgement, pending, completed, retrying, and failed states. It gives the user a way to understand the current state without implying that a simulated transition reflects a real background job.

**Acceptance check:** Walk through a successful operation and a retry that ends in failure. Explain which state changes would need to be persisted or reported by Rails.

**PoC assignment:** Prototype immediate, pending, completed, retrying and failed states for a slow AI operation.

**Rails:** Move appropriate work to Active Job. Add job status, idempotency strategy, retry policy and UI feedback.

**Compare:** The prototype changes state instantly because you told it to. What produces and persists those states in Rails?

**Gate:** Explain when background execution improves the system and when it only adds complexity.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
