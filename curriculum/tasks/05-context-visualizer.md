# Task 05 — Conversation and Context

**Module 3 — Reliability and context**

## Documentation supplied for the PoC

**Situation:** Users may assume a model remembers the entire conversation. The team needs a way to show which messages will be sent on the next request and what happens when the context becomes too large.

**Required behavior:** The next-request view reflects included and excluded messages. Reset, truncation, and summary choices visibly change that view, and a simple budget indicator shows when space is limited. Any summary behavior that is mocked must be labeled.

**Acceptance check:** Start with several messages, exclude one, then choose a context-reduction option. Show the exact visible difference in what would be sent next.

**PoC assignment:** Visualize a conversation as messages that can be included/excluded from the next model request. Show a simple context-budget indicator and reset/truncate/summarize options.

**Ruby:** Build CLI conversation history with roles, context construction, reset and a simple truncation/summary strategy.

**Compare:** What looked like 'memory' in the UI? What data must actually be resent to the model?

**Gate:** Explain why an LLM does not automatically remember the previous CLI request.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
