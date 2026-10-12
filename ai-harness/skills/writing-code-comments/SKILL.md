---
name: writing-code-comments
description: Review or improve comments touched by the current software change so they explain contracts and constraints accurately, following the project's language conventions.
---

# Writing code comments

Read [the shared contract](../../references/workflow.md).

Read the relevant diff and neighboring comments. Explain constraints, units,
invariants, surprising failure behavior, or the reason a workaround exists.
Use names and simple code when those express the idea better than a comment.
Remove misleading narration only within the requested scope; do not turn a
small change into a repository-wide documentation sweep.

Check comments next to changed code for drift, and public interface docs for
contract changes. Use the repository's documentation style: do not impose
JSDoc on Ruby, mandatory blocks on every trivial function, or a ticket-key
format that the project has not chosen. Do not invent a tracker reference.

For a review request, report concrete file locations and what a reader would
misunderstand. For an explicit request to improve comments, edit only the
relevant comments and verify that the resulting explanation matches the code.
