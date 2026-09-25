# Task 01 — HTTP Before AI

**Module 1 — Product and network basics**

**Lovable PoC:** Build an educational HTTP playground with GET/POST, URL, headers, JSON body and timeout. Display outgoing request, status, response headers, raw body, parsed JSON and separate HTTP-error/timeout states. Use a harmless test API or controlled mock.

**Ruby:** Build an independent experiment under `standalone/` using `Net::HTTP`. Add JSON serialization/deserialization, headers, status handling, timeout and tests with the network boundary stubbed. Keep it small enough to reuse the mechanism in Task 02.

**Compare:** Identify which process sends the request in the PoC and which process sends it in Ruby. Compare browser/backend constraints with `Net::HTTP`.

**Gate:** Trace request → network boundary → response → JSON → Ruby object without using framework vocabulary as a substitute for explanation.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Keep the Lovable change small, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
