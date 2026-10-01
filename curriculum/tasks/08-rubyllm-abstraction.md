# Task 08 — Abstraction and RubyLLM

**Module 5 — Abstractions and contracts**

## Documentation supplied for the PoC

**Situation:** The team wants the Knowledge Assistant's ask experience to remain understandable if the underlying model provider changes. Provider selection is a technical concern; the user's basic question and answer flow should stay recognizable.

**Required behavior:** The same question can be shown with Provider A and Provider B while the visible product contract stays stable. Provider-specific details may be exposed in an inspector, but the PoC must identify any mocked differences.

**Acceptance check:** Switch between the two providers for one question. Point out what the user sees in both cases and what the later Ruby abstraction must handle behind that screen.

**PoC assignment:** Build a conceptual provider-switching screen showing the same product behaviour with Provider A/B. The purpose is to expose the desired contract, not provider internals.

**Rails/Ruby:** Introduce RubyLLM. Preserve behaviour/tests. Compare the raw implementation with RubyLLM and write an ADR.

**Compare:** What complexity disappeared? What complexity still exists but became hidden?

**Gate:** Point to the earlier raw implementation and explain what RubyLLM abstracts.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
