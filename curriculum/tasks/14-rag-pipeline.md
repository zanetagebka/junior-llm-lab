# Task 14 — RAG Pipeline

**Module 8 — Grounded answers**

**Lovable PoC:** Build a pipeline inspector: question → retrieved chunks → assembled context → generated answer. Let the user expand each stage.

**Rails/Ruby:** Implement the real retrieval and generation pipeline. Persist/inspect retrieval metadata and refuse unsupported answers.

**Compare:** Which independent failure points became visible only after implementing the pipeline?

**Gate:** Explain retrieval failure separately from generation failure.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
