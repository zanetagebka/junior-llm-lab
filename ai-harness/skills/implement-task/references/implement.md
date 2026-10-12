# Implement

Work through the approved or authorized plan one coherent slice at a time.
Use focused behavior tests for meaningful behavior changes and proportionate
checks for other changes. For a bug, capture the observed failure and add a
regression check when useful. Tests should distinguish correct from incorrect
behavior, not mirror implementation details.

Make the smallest coherent change following the project's architecture.
Verify the slice, then check integration between slices when required by the
task. Do not silently skip a failed check or mark unrun commands as passing.
Refactor when it serves the task, and rerun affected checks after changes.

When reality differs from the plan, update the plan and record why. Seek a
decision when the change alters a user-chosen approach or the requested scope;
otherwise resolve routine details and continue. Commit only when requested by
the delivery workflow. Do not delete user code because a test-first ritual was
not followed. Preserve unrelated dirty changes.

At the end, record what changed, observed evidence, limits, and the next action.
Use self-review against the actual final tree before preparing the PR.
