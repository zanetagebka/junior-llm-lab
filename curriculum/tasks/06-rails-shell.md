# Task 06 — Bring the Product Into Rails

**Module 4 — Rails vertical slice**

## Documentation supplied for the PoC

**Situation:** Northstar Demo staff need to find the fictional knowledge documents and keep questions organized by conversation. The existing product shell should now describe the path from browsing a document to recording a question.

**Required behavior:** The PoC shows document browsing, a conversation list, a question entry flow, and empty states when no documents, conversations, or messages exist. It does not claim to generate a real answer or persist data unless that behavior is actually connected.

**Acceptance check:** Open a fictional document, start a conversation, and enter a question. Explain which parts of the flow are simulated and which data the later Rails implementation must store.

**PoC assignment:** Refine the existing Knowledge Assistant workflow: fictional knowledge documents, conversation list, question flow, and empty states. Still no need for real AI.

**Rails:** Extend the existing Rails starter in small PRs. First create and display fictional `KnowledgeDocument` records from `curriculum/fixtures/`. Then add `Conversation` and `Message` persistence plus a question form that records a user message without calling a model. Add focused model and request tests. Do not build search, embeddings, or AI answers here.

**Compare:** Extract entities, state transitions and validations from the prototype. Record what the prototype hid about persistence and source ownership.

**Gate:** Explain browser → route → controller → model/database → response/view for both viewing a document and recording a question. Show tests for each PR.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
