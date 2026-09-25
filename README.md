# Junior LLM Lab

This is the active learning repository for a junior Rails developer. The product grows from a small Rails application into a knowledge assistant. Lessons pair a Lovable prototype with Ruby or Rails work so the learner can distinguish a convincing demo from working software.

This repository is the single source of truth for the programme. Start with [the ten-module map](curriculum/MODULES.md), then work through [Tasks 00–20](curriculum/tasks/). Earlier plans are archived in the sibling `junior-llm-lab-archive` directory and are not instructions for this lab.

## What is here

- `app/`, `config/`, `db/`, `test/`: a bootable Rails starter. Product features are intentionally left for the learner.
- `curriculum/tasks/`: the twenty-one existing assignments, numbered 00–20, adapted into one progression.
- `curriculum/WORKFLOW.md`: the common Lovable, implementation, evidence, and reflection workflow.
- `curriculum/fixtures/`: fictional source documents for search and RAG exercises.
- `standalone/`: space for independent Ruby experiments. These do not need to become Rails features until a task calls for it.
- `learning-agent/`: the learning coach, private log template, and optional review handoff.

## Start the application

Use Ruby from `.ruby-version` and a local PostgreSQL server. Then run:

```sh
bundle install
bin/rails db:prepare
bin/rails test
bin/rails server
```

The generated app has no completed knowledge-base or LLM feature yet. Task 00 adds the first product page and test. A model provider key and RubyLLM are not required to start; they arrive in later tasks. Keep provider credentials in environment variables, never in Lovable client code or Git.

## Start a lesson

Read [the workflow](curriculum/WORKFLOW.md) and the next task. Use the same evolving Lovable prototype across tasks, making only the change the task needs. The corresponding code may be a standalone Ruby script or a slice of this Rails app. Progress depends on demonstrated understanding, not a calendar.

The root `AGENTS.md` connects the [Learning Agent](learning-agent/README.md). At onboarding, use `start-learning-project`; during a task, use `guided-coding`; at the end of each meaningful lesson, use `finish-learning-session`. The detailed log is the ignored `learning-agent/docs/LEARNING_LOG.local.md`. A short learner-approved handoff in the PR gives the reviewer evidence without publishing the private log.

## Boundaries

All starter documents are fictional. Do not use company documents in the prototype or send them to a model provider during the learning tasks. [The internal-use gate](curriculum/INTERNAL_USE_GATE.md) lists the additional work needed before the result can handle internal company knowledge.
