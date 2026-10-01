# Task 03 — Prompt Laboratory

**Module 2 — Talking to a model**

## Documentation supplied for the PoC

**Situation:** The team wants to compare two prompt versions on the same examples rather than judge a single attractive response. The PoC should make the comparison process understandable before the Ruby experiment is run.

**Required behavior:** Each variant uses the same visible input set. Results remain associated with their input and prompt version, and the reviewer can record an observation about a difference. Mocked outputs are identified.

**Acceptance check:** Show one input where the variants differ and describe what the screen lets a reviewer observe. Do not claim that the UI alone proves one prompt is more reliable.

**PoC assignment:** Build a prompt comparison screen. One input dataset, two prompt variants, side-by-side results and a small observation form. Mock outputs if necessary.

**Ruby:** Separate system/user inputs and model configuration. Create prompt v1 deliberately and document why it is structured that way. Run it on a fixed dataset. Identify one concrete weakness, write a hypothesis, create v2, then run both versions against the same examples and compare them.

**Required experiment:** Use the [prompt experiment template](../templates/PROMPT_EXPERIMENT.md). The conclusion must identify which change was intended to affect which behaviour and what evidence was observed.

**Compare:** Did the attractive side-by-side UI make the comparison scientifically meaningful? What controls are needed for a useful experiment?

**Gate:** Explain why one good response is not evidence that a prompt is reliable.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
