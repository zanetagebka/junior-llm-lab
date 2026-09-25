# Task 06 — Bring the Product Into Rails

**Module 4 — Rails vertical slice**

**Lovable PoC:** Refine the existing Knowledge Assistant workflow: fictional knowledge documents, conversation list, question flow, and empty states. Still no need for real AI.

**Rails:** Extend the existing Rails starter in small PRs. First create and display fictional `KnowledgeDocument` records from `curriculum/fixtures/`. Then add `Conversation` and `Message` persistence plus a question form that records a user message without calling a model. Add focused model and request tests. Do not build search, embeddings, or AI answers here.

**Compare:** Extract entities, state transitions and validations from the prototype. Record what the prototype hid about persistence and source ownership.

**Gate:** Explain browser → route → controller → model/database → response/view for both viewing a document and recording a question. Show tests for each PR.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
