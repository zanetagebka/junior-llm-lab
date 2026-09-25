# Lesson workflow

Use this workflow with each task in `tasks/`. Keep evidence short enough that it helps learning rather than becoming a second project.

## 1. Frame the behavior

The learner writes the user outcome, one or two acceptance criteria, a first implementation idea, and what they expect Lovable to hide. The mentor checks missing prerequisites before work begins.

## 2. Change the ongoing Lovable prototype

Prototype only the interaction or state relevant to this task. For a technical task, a small inspector or simulated failure state is sufficient; do not build a new app each time. Record what is real, what is mocked, where execution happens, and what data crosses a boundary. Keep credentials and company data out of the prototype.

The result is a short **prototype contract**: inputs, outputs, states, errors, and the behavior the Ruby or Rails implementation must make real. Lovable-generated code is not the Rails implementation.

## 3. Implement or experiment

Use a standalone Ruby script when the task is about a mechanism, and the Rails app when the task is about the product. The learner makes a meaningful first attempt and brings a specific question or observation to the agent. They may explicitly request a small implementation step when needed; the mentor remains responsible for checking understanding rather than enforcing unproductive struggle.

For a meaningful prompt change, record the observed problem, a hypothesis before editing, the version diff, and a comparison on the same examples where practical. Use the [prompt experiment template](templates/PROMPT_EXPERIMENT.md) for substantial changes. Routine wording fixes need no experiment form.

## 4. Verify and compare

Show the relevant test, command, manual check, or eval result and what it proves. Identify at least one difference between the prototype and the Ruby or Rails behavior. Separate repository facts from the learner's interpretation.

## 5. Explain and log

The learner explains one important data flow or design decision without reading an agent-generated answer. At the end of a meaningful lesson, run `finish-learning-session` to update the private `learning-agent/docs/LEARNING_LOG.local.md`. The agent asks for the learner's own reflection and does not invent what they learned.

Use [the lesson handoff template](templates/LESSON_HANDOFF.md) for a short PR or review note. The learner decides what reflection to share; the private log is never copied wholesale. The mentor reviews the code and evidence, then may request one small change to check transfer of understanding.

## Learning Agent commands

- First session: `Use start-learning-project to set up my learning focus for Task 00.`
- During work: `Use guided-coding to help me investigate this Task XX problem.`
- At closure: `Use finish-learning-session to record what I learned and the next step.`

The agent's [instructions](../learning-agent/AGENTS.md) and its [help ladder](../learning-agent/skills/guided-coding/references/help-ladder.md) control how much solution detail it offers. Passing tests never substitute for the learner's explanation.
