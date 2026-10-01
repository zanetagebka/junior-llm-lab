# Task 10 — Tool Calling

**Module 6 — Actions and slow work**

## Documentation supplied for the PoC

**Situation:** The assistant may propose a controlled action, such as looking up a fictional knowledge document. The application must show the proposed action before treating it as authorized or complete.

**Required behavior:** The PoC displays the requested tool, its arguments, an approval or denial step for that action, and the resulting output or refusal. Arguments remain visible for inspection. All execution in the PoC is simulated unless a safe, scoped backend exists.

**Acceptance check:** Show a valid read-only lookup and a denied or invalid request. The reviewer should be able to distinguish the model's proposal from the application's decision to execute it.

**PoC assignment:** Simulate a model requesting one of a few safe tools. Show proposed tool name/arguments and an approval/result step.

**Rails/Ruby:** Implement one or more tightly scoped tools, argument validation, authorization boundary and audit trail. No arbitrary shell/SQL/network tool.

**Compare:** What is merely a UI action in the prototype versus executable authority in the backend?

**Gate:** Explain why model-generated tool arguments are untrusted input.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
