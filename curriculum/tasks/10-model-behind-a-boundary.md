# Task 10 — A model behind a boundary

**Level 4 · Judgment** · Harness focus: verifying work the agent cannot fully
check; honest "Not run" evidence; keeping secrets out of state · Size: 4–6 h

## Why this task

When a feature calls a language model, tests with a fake provider prove the
plumbing, not the answers. The agent cannot observe answer quality without a
real call, and it must not invent results. This task separates what was
verified from what was assumed, and keeps credentials out of code,
workspaces, and logs.

## Starting point

Branch from `main`. Read [the fixtures README](../fixtures/README.md), the
four fixture documents, and the Handbook page in the baseline app. A model
provider key is optional. Without one you can still complete everything
except the live evaluation.

## Brief

**Situation.** Employees ask the same policy questions repeatedly. Northstar
Desk should answer them from the handbook, and be honest when the handbook
doesn't say.

**Required behavior.**

- On the Handbook page, an employee can ask a question.
- The answer uses only the four fixture documents and names the document ID
  it relied on (for example `D01`).
- When no document supports an answer, the response says so plainly instead
  of guessing. The fixtures README's Wi-Fi question is the reference case.
- A provider failure or timeout shows an error state that cannot be mistaken
  for an answer.
- All provider code sits behind one service object. Controllers and models
  never call the provider directly.
- The provider key comes from an environment variable or Rails credentials.
  It never appears in Git, logs, task workspaces, or the PR.

**Acceptance criteria.**

- Automated tests use a fake provider and cover: the documents are included in
  the request; a cited document ID is shown; the insufficient-evidence path;
  the provider-error path. No key is needed to run them.
- A small evaluation script runs the five baseline questions from the fixtures
  README against a real provider and prints, for each question, the answer,
  the cited ID, and whether it matches the expected source or behavior.
- If you have no key, the evaluation is recorded as **Not run**, with the
  reason.
- The suite and RuboCop pass.

**Out of scope.** Embeddings, vector search, chunking, and conversation
history. Four short documents fit in one request.

## Path A — on your own

Design the service boundary and the fake first, then the prompt, then the
page. Use the [prompt experiment template](../templates/PROMPT_EXPERIMENT.md)
if you change the prompt substantially.

## Path B — via the harness

```text
Use implement-task for curriculum/tasks/10-model-behind-a-boundary.md with
plan-review involvement.
```

At plan review, check how the plan separates plumbing tests from the live
evaluation, and where the key is read. After implementation, read the
Verification table line by line and sort each claim into one of three groups:

- **observed:** a command was run here and its output is shown;
- **not run:** honestly marked, with a reason;
- **asserted:** described as working without evidence.

Run the evaluation yourself if you have a key, and compare your results with
anything the agent claimed about answer quality.

**Watch for.** Claims that the assistant "answers correctly" based only on
fake-provider tests. A key, or part of one, appearing in the workspace,
terminal output pasted into it, or the PR body. Tests that call the real
provider.

## Path C — both

Build the service boundary and fake yourself (path A), then hand the page and
evaluation script to the harness, or the reverse. Compare where each of you
drew the boundary.

## Done when

- The acceptance criteria are met.
- Your handoff lists which claims about the feature are observed, not run, and
  assumed.
- `git log -p` and `.ai-workspace/tasks/10/` contain no secret.

## Debrief

1. What do the fake-provider tests prove, and what do they not?
2. Did any agent output claim more than its evidence supported? How did you
   spot it?
3. What would you need before anyone used this with real company documents?
   See [the internal-use gate](../INTERNAL_USE_GATE.md).
