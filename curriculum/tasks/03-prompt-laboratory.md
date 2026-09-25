# Task 03 — Prompt Laboratory

**Module 2 — Talking to a model**

**Lovable PoC:** Build a prompt comparison screen. One input dataset, two prompt variants, side-by-side results and a small observation form. Mock outputs if necessary.

**Ruby:** Separate system/user inputs and model configuration. Create prompt v1 deliberately and document why it is structured that way. Run it on a fixed dataset. Identify one concrete weakness, write a hypothesis, create v2, then run both versions against the same examples and compare them.

**Required experiment:** Use the [prompt experiment template](../templates/PROMPT_EXPERIMENT.md). The conclusion must identify which change was intended to affect which behaviour and what evidence was observed.

**Compare:** Did the attractive side-by-side UI make the comparison scientifically meaningful? What controls are needed for a useful experiment?

**Gate:** Explain why one good response is not evidence that a prompt is reliable.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
