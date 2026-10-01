# Task 17 — Cost, Latency and Observability

**Module 9 — Quality and operational risk**

## Documentation supplied for the PoC

**Situation:** The team needs to notice slow, costly, or failing requests and decide what to investigate. A useful operations view links a measurement to a possible action.

**Required behavior:** A request view includes duration, model, token or cost information, retrieval time, and failure status where available. Missing measurements are shown as unavailable rather than invented values. Sample metrics are labeled.

**Acceptance check:** Show a slow request and a failed request. For each, state what the reviewer would investigate and whether the displayed numbers are real or simulated.

**PoC assignment:** Prototype an operations view showing request duration, model, tokens/cost, retrieval time and failures. Define what action each metric could trigger.

**Rails/Ruby:** Capture real available metrics and produce a simple report over evaluation runs.

**Compare:** Remove any prototype metric that cannot be collected or cannot drive a decision.

**Gate:** Explain one architecture/model/prompt decision that the measurements could change.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
