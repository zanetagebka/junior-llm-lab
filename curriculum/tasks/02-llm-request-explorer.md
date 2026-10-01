# Task 02 — First LLM Request

**Module 2 — Talking to a model**

## Documentation supplied for the PoC

**Situation:** The team needs to see how a user message becomes a model request before connecting the product to a provider. The prototype may use example responses because provider access is not a condition for this review.

**Required behavior:** A reviewer can change the system instruction, user message, and model selection, then inspect the resulting conceptual request separately from the response. Any sample response is labeled as such. Credentials must never appear in browser code or the displayed payload.

**Acceptance check:** Change one input and show which part of the request changes. Show a mocked response and explain which request and response fields would need a real provider later.

**PoC assignment:** Prototype an LLM request explorer. Inputs: system instruction, user message, model selector and safe mock configuration. Show the conceptual request payload and response separately. Use mocked model responses or a safe server-side integration, never a secret in browser code.

**Ruby:** In `standalone/`, use the HTTP layer from Task 01 to make the first raw provider request. Read credentials from environment, build the payload explicitly, extract output and stub the provider in tests. Keep the raw code for comparison and reuse in Tasks 07–08.

**Compare:** Which parts of the PoC were UI fiction? Which fields correspond to a real provider request? Where is the secret stored?

**Strategist check:** Why use an LLM instead of deterministic Ruby for this behaviour?

**Gate:** Explain input, payload, authentication, provider response and extracted application output.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
