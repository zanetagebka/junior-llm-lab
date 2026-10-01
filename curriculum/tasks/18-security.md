# Task 18 — Adversarial Playground

**Module 9 — Quality and operational risk**

## Documentation supplied for the PoC

**Situation:** The assistant may read untrusted text and receive model-proposed tool arguments. The team needs to make the trust boundary visible before relying on a prompt to keep the application safe.

**Required behavior:** The screen contains synthetic prompt-injection examples, malicious document content, and unsafe tool arguments. It shows proposed actions and whether the application blocks or allows them, with a reason. No real company content is used.

**Acceptance check:** Try a fictional document that tells the assistant to ignore its task and an unsafe tool argument. Show where the application would reject each attempt; label any simulated enforcement.

**PoC assignment:** Design an adversarial testing screen containing prompt-injection examples, malicious document scenarios, unsafe tool arguments and blocked/allowed outcomes. Use synthetic data only.

**Rails/Ruby:** Threat-model the application and implement at least five controlled adversarial tests/mitigations around authorization, tools, data leakage, logging and retrieved content.

**Compare:** Which threats are product/UI problems and which require backend trust boundaries?

**Gate:** Explain why prompt text alone cannot enforce authorization.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
