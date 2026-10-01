# Task 12 — Embeddings

**Module 7 — Representation and retrieval**

## Documentation supplied for the PoC

**Situation:** The team wants to explore why different questions may retrieve different fictional document passages. A ranking view can help explain similarity, but the prototype itself cannot establish how embeddings behave.

**Required behavior:** The explorer uses a small, identifiable set of fictional text samples, a selected query, and a ranked result list. It shows enough source text to compare results. Mocked scores or rankings are labeled.

**Acceptance check:** Choose two different questions from the fixture set and show how the displayed ranking changes. State whether those rankings came from actual vector calculations or were arranged for the demo.

**PoC assignment:** Build a visual similarity explorer: several text samples, a selected query and ranked 'most similar' results. The vector math may be mocked but must be labelled.

**Ruby:** In `standalone/`, generate/store small embeddings for the fictional documents and calculate similarity for controlled examples. Inspect actual numbers and ranking; do not add a vector database yet.

**Compare:** What does the visualization help humans understand? What mathematical behaviour did it conceal?

**Gate:** Explain an embedding and similarity without saying 'AI understands meaning'.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
