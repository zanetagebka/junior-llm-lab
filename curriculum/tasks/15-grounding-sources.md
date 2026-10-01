# Task 15 — Grounding and Sources

**Module 8 — Grounded answers**

## Documentation supplied for the PoC

**Situation:** Northstar Demo staff need to know which supplied document supports an answer before trusting it. A citation label is useful only when the corresponding evidence can be inspected.

**Required behavior:** An answer can show a source identifier and the supporting passage or panel. When the documents do not support an answer, the UI says there is insufficient evidence and avoids a misleading citation. Mocked support must be labeled.

**Acceptance check:** Show an expense claim answer with its supporting D01 passage, then ask for the office Wi-Fi password. The reviewer should see why the second question cannot be answered from the supplied documents.

**PoC assignment:** Design answers with source references, evidence panels and an explicit 'insufficient evidence' state.

**Rails/Ruby:** Carry source/chunk metadata through retrieval to the response. Add unsupported-question tests and examples of good retrieval/bad generation and the reverse.

**Compare:** A citation-looking UI is easy. What makes a source reference truthful?

**Gate:** Demonstrate that every displayed source maps to evidence actually used by the system.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
