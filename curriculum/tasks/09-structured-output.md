# Task 09 — Structured Output

**Module 5 — Abstractions and contracts**

## Documentation supplied for the PoC

**Situation:** Product code may need specific fields from a model response, such as the question's intent or whether the answer is uncertain. A persuasive paragraph is not enough when another part of the application depends on those fields.

**Required behavior:** A free-text answer and a structured representation can be inspected separately. The card shows fields such as intent, answer type, and uncertainty, and it has an explicit state when a field is missing or invalid.

**Acceptance check:** Show a complete example and one missing-field example. Explain what a reviewer can observe in the UI and what validation the Ruby or Rails implementation must still perform.

**PoC assignment:** Show free-text output beside a structured card with fields such as intent, answer type and uncertainty. Include an invalid/missing-field state.

**Rails/Ruby:** Define a structured output contract/schema, validate it, handle invalid responses and test it.

**Compare:** A card can always look structured. What guarantees that the underlying model output satisfies the contract?

**Gate:** Explain why product code should not rely on persuasive prose when it needs machine-readable behaviour.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
