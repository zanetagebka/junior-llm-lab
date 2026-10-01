# Task 14 — RAG Pipeline

**Module 8 — Grounded answers**

## Documentation supplied for the PoC

**Situation:** When an answer is wrong, the team must tell whether the relevant document was missed, useful text was left out of the model context, or the generated answer misused that context.

**Required behavior:** One question can be traced through retrieved chunks, assembled context, and generated answer. Each stage is inspectable without exposing unrelated data. A missing retrieval result and an unsupported generated answer have distinct visible outcomes.

**Acceptance check:** Walk through a question answered by a fictional document and a question with insufficient evidence. Point to the stage where the second flow stops or fails.

**PoC assignment:** Build a pipeline inspector: question → retrieved chunks → assembled context → generated answer. Let the user expand each stage.

**Rails/Ruby:** Implement the real retrieval and generation pipeline. Persist/inspect retrieval metadata and refuse unsupported answers.

**Compare:** Which independent failure points became visible only after implementing the pipeline?

**Gate:** Explain retrieval failure separately from generation failure.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
