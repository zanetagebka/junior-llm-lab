# Task starter specifications

Tasks 07 and 08 require a specific working-tree state that should not live in
`main`. The following patches are planned training assets. They are not
included in this documentation update, and require the
[Northstar Desk baseline](../SETUP.md#northstar-desk-baseline) first.

| Planned patch | Task | Intended starting state |
|---|---|---|
| `07-csv-export.patch` | [Task 07](../tasks/07-review-a-change.md) | A colleague's uncommitted CSV-export change with problems to review |
| `08-messy-checkout.patch` | [Task 08](../tasks/08-ship-only-what-you-mean.md) | A tested severity filter mixed with unrelated edits and a scratch file |

Once supplied, each patch is applied with `git apply` on a fresh task branch
from the prepared `main`, leaving its changes uncommitted. Do not read the
patch before doing its task; reviewing the working-tree change is the exercise.

CI currently checks this documentation. Add patch application and runtime
checks separately when the baseline and both patches are available.
