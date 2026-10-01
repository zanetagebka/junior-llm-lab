# Task 13 — Semantic Search

**Module 7 — Representation and retrieval**

## Documentation supplied for the PoC

**Situation:** Northstar Demo staff may search the same fictional documents using exact terms or everyday language. The team needs to compare these two search experiences on the same corpus before claiming that one is better.

**Required behavior:** Keyword and semantic results appear for the same query, with a document identifier or other source metadata. The UI has a no-result state. Any semantic ranking that is hand-picked or simulated must be identified.

**Acceptance check:** Use a fixture question with an expected source, then ask about the office Wi-Fi password, which the supplied documents do not answer. Show both search views and explain what the PoC does not prove about retrieval quality.

**PoC assignment:** Prototype keyword search and semantic search side by side over a tiny knowledge set. Design result metadata and no-result states.

**Rails/Ruby:** Use the fictional `KnowledgeDocument` records from Task 06. Establish a simple keyword baseline, then implement chunk representation, embeddings, top-k search and metadata. Compare both approaches on the fixed questions in `curriculum/fixtures/README.md` and at least two learner-added cases.

**Compare:** Which prototype examples actually demonstrate value rather than being hand-picked?

**Gate:** Identify cases where keyword search is preferable.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
