# Lesson workflow

Use this workflow with each task in `tasks/`. Keep evidence short enough that it helps learning rather than becoming a second project. The mentor gives the learner the current task page, including its **Documentation supplied for the PoC** section, and any relevant fictional documents from `fixtures/` before PoC work begins. The **PoC assignment** states the expected scope; the learner decides how to meet the documented behavior and acceptance check. If a task needs more detail, the mentor supplies a short written addendum with the user need, constraints, and acceptance criteria. Use only fictional documents until the [internal-use gate](INTERNAL_USE_GATE.md) is met.

## 1. Read the documentation and frame the behavior

The learner reads the supplied documentation, then writes the user outcome, one or two acceptance criteria grounded in it, a first PoC idea, and any open questions or assumptions. The learner identifies what the PoC can demonstrate and what Lovable will hide. The mentor resolves material gaps in the brief before the PoC is built.

## 2. Prepare the Lovable PoC

The learner creates or changes only the interaction or state needed to demonstrate the documented requirements. For a technical task, a small inspector or simulated failure state is sufficient; do not build a new app each time. Record what is real, what is mocked, where execution happens, and what data crosses a boundary. Keep credentials and company data out of the prototype.

The result is a short **prototype contract**: inputs, outputs, states, errors, and the behavior the Ruby or Rails implementation must make real. Lovable-generated code is not the Rails implementation.

## 3. Demo and review the PoC

The learner demos the relevant flows and states against the supplied documentation, explains the assumptions and mocked behavior, and answers reviewer questions. The reviewer records one decision with a reason in the prototype contract: **approved**, **changes requested**, or **rejected**. For changes requested, revise and demo again. For rejection, revisit the brief or choose a different approach before creating another PoC. Record the final decision and any agreed changes in the same contract. Approval is the gate to the Ruby or Rails step; it confirms the proposed behavior, not technical feasibility or correctness.

## 4. Implement or experiment

Use a standalone Ruby script when the task is about a mechanism, and the Rails app when the task is about the product. The learner makes a meaningful first attempt and brings a specific question or observation to the agent. They may explicitly request a small implementation step when needed; the mentor remains responsible for checking understanding rather than enforcing unproductive struggle.

For a meaningful prompt change, record the observed problem, a hypothesis before editing, the version diff, and a comparison on the same examples where practical. Use the [prompt experiment template](templates/PROMPT_EXPERIMENT.md) for substantial changes. Routine wording fixes need no experiment form.

## 5. Verify and compare

Show the relevant test, command, manual check, or eval result and what it proves. Identify at least one difference between the prototype and the Ruby or Rails behavior. Separate repository facts from the learner's interpretation.

## 6. Explain and log

The learner explains one important data flow or design decision without reading an agent-generated answer. At the end of a meaningful lesson, run `finish-learning-session` to update the private `learning-agent/docs/LEARNING_LOG.local.md`. The agent asks for the learner's own reflection and does not invent what they learned.

Use [the lesson handoff template](templates/LESSON_HANDOFF.md) for a short PR or review note. The learner decides what reflection to share; the private log is never copied wholesale. The mentor reviews the code and evidence, then may request one small change to check transfer of understanding.

## Learning Agent commands

- First session: `Use start-learning-project to set up my learning focus for Task 00.`
- During work: `Use guided-coding to help me investigate this Task XX problem.`
- At closure: `Use finish-learning-session to record what I learned and the next step.`

The agent's [instructions](../learning-agent/AGENTS.md) and its [help ladder](../learning-agent/skills/guided-coding/references/help-ladder.md) control how much solution detail it offers. Passing tests never substitute for the learner's explanation.
