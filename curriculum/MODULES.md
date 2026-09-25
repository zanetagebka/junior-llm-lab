# Ten modules, one task sequence

Tasks 00–20 are the assignments. These ten modules explain why adjacent tasks belong together; they are not ten extra assignments. The Rails app is available from day one. Standalone Ruby experiments remain separate until a task deliberately brings the idea into Rails.

| Module | Tasks | Main understanding | Product result |
|---|---|---|---|
| 1. Product and network basics | 00–01 | Rails request flow; HTTP request and response | Product shell and HTTP experiment |
| 2. Talking to a model | 02–03 | Raw model call; prompt design and comparison | First model output outside Rails |
| 3. Reliability and context | 04–05 | External failures; conversation history and context budget | A testable Ruby conversation experiment |
| 4. Rails vertical slice | 06–07 | Persistence and request flow; a real model-backed question | Documents and conversations in Rails |
| 5. Abstractions and contracts | 08–09 | RubyLLM's boundary; validated structured output | A replaceable, tested model service |
| 6. Actions and slow work | 10–11 | Controlled tools; jobs, retries, and visible status | Safe read-only capability and asynchronous flow |
| 7. Representation and retrieval | 12–13 | Embeddings and similarity; keyword baseline | Search over fictional documents |
| 8. Grounded answers | 14–15 | Retrieval versus generation; source support | An answer with inspectable evidence |
| 9. Quality and operational risk | 16–18 | Evals, latency/cost, privacy, prompt injection | Measured behavior and threat model |
| 10. Product judgment | 19–20 | User hypothesis and non-AI baseline; technical defence | An evidence-backed capstone |

## The product thread

The fictional Knowledge Assistant has one evolving Lovable prototype and one evolving Rails application. Tasks 01–05 and 12 can use standalone Ruby scripts in `standalone/`. Task 06 is a bridge into the existing Rails starter, delivered in small PRs. The learner should retain the raw request from Task 02 so Task 08 can compare it with RubyLLM.

Use the same small question set as the product grows. Record expected documents before adding semantic search. Later evals should reuse and expand those examples so improvements can be compared with the keyword baseline.

## Advancement

A completed screen or passing test is partial evidence. At each module boundary, the mentor asks the learner to trace one data flow, defend one choice, identify one failure mode, and make one small change without a generated solution. Reinforce a gap before advancing. Task 06 can take several PRs; the numbers are a dependency order, not a weekly schedule.

The lab teaches how LLM applications work from code: HTTP, prompts, context, nondeterministic output, contracts, tools, embeddings, retrieval, evaluation, and failure boundaries. Model training and transformer internals are separate optional mentor-led study topics.
