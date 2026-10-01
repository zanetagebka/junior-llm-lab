# Task 00 — Rails Starter + Product Shell

**Module 1 — Product and network basics**

## Documentation supplied for the PoC

**Situation:** Staff at fictional Northstar Demo need one place to ask questions about the supplied knowledge documents. This first version is only a product shell; no answer generation or saved conversation exists yet.

**Required behavior:** A visitor can find where to ask a question and where knowledge documents will appear. Before any answer exists, the page explains that state clearly. Any clickable behavior that suggests an answer must be marked as simulated.

**Acceptance check:** Show the page before a question is entered, then enter a question about expenses. The reviewer should be able to identify the question area, knowledge area, and mocked behavior without being shown a fabricated policy answer.

**PoC assignment:** Create a tiny clickable shell for the future Knowledge Assistant: landing screen, question input, empty answer state, knowledge area. No real AI. Label mocked behaviour.

**Rails:** Start in this bootable Rails repository. Run setup and inspect `bin/rails routes`, then add one root route, a simple Knowledge Assistant page, and a request test. Do not add document models, an AI SDK, or a model call yet.

**Compare:** What did the clickable prototype tell you about the product? What did it tell you nothing about regarding Rails request flow, dependencies and tests?

**Gate:** Trace browser → route → controller → view, explain how the Rails app starts, and show the new test passing.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
