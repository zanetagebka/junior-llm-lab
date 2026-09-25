# Task 02 — First LLM Request

**Module 2 — Talking to a model**

**Lovable PoC:** Prototype an LLM request explorer. Inputs: system instruction, user message, model selector and safe mock configuration. Show the conceptual request payload and response separately. Use mocked model responses or a safe server-side integration, never a secret in browser code.

**Ruby:** In `standalone/`, use the HTTP layer from Task 01 to make the first raw provider request. Read credentials from environment, build the payload explicitly, extract output and stub the provider in tests. Keep the raw code for comparison and reuse in Tasks 07–08.

**Compare:** Which parts of the PoC were UI fiction? Which fields correspond to a real provider request? Where is the secret stored?

**Strategist check:** Why use an LLM instead of deterministic Ruby for this behaviour?

**Gate:** Explain input, payload, authentication, provider response and extracted application output.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
