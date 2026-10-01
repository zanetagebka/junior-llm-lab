# Task 01 — HTTP Before AI

**Module 1 — Product and network basics**

## Documentation supplied for the PoC

**Situation:** A developer needs to inspect what an HTTP client sends and receives before using that mechanism for an AI request. The screen is a learning aid, not a general API client.

**Required behavior:** The request view identifies method, URL, headers, optional JSON body, and timeout. The response view separates status, headers, raw body, and parsed JSON. An HTTP error and a timeout must be distinguishable.

**Acceptance check:** Demonstrate one successful GET or POST and one timeout or HTTP error using a controlled mock or harmless test API. Explain which displayed values came from a real request and which were simulated.

**PoC assignment:** Build an educational HTTP playground with GET/POST, URL, headers, JSON body and timeout. Display outgoing request, status, response headers, raw body, parsed JSON and separate HTTP-error/timeout states. Use a harmless test API or controlled mock.

**Ruby:** Build an independent experiment under `standalone/` using `Net::HTTP`. Add JSON serialization/deserialization, headers, status handling, timeout and tests with the network boundary stubbed. Keep it small enough to reuse the mechanism in Task 02.

**Compare:** Identify which process sends the request in the PoC and which process sends it in Ruby. Compare browser/backend constraints with `Net::HTTP`.

**Gate:** Trace request → network boundary → response → JSON → Ruby object without using framework vocabulary as a substitute for explanation.

## Completion

Follow the [lesson workflow](../WORKFLOW.md). Read the supplied documentation, keep the Lovable change small, demo it, and record the review decision. After approval, implement the agreed behavior in Ruby or Rails, show verification, and close the session in the private Learning Agent log.
