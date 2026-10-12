# Gate before internal company data

The training tasks use fictional documents. A convincing model-backed demo, such as Task 10, does not authorize using real company information. Before internal use, the mentor and appropriate company owners must establish and verify:

- document ownership, ingestion, update, and deletion behavior;
- authentication and document-level authorization before retrieval and before displaying a source;
- which document text, questions, and logs may be sent to each model provider;
- secrets management and safe handling of prompts, tool arguments, and logs;
- an evaluation set with unsupported, stale, and access-restricted questions;
- measurable answer support, refusal behavior, latency, cost, and failure handling;
- an operational owner and a way to report or correct bad answers.

Learners can design and test these boundaries with synthetic data. Internal readiness is a separate decision based on actual evidence and company policy.
