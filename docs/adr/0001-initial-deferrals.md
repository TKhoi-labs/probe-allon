# 1. Initial deferrals and declines

## Status

Proposed

## Context

Modules that were not enabled when this repository was generated must be resolved here as
either **deferred** (with the trigger that will revisit them) or **declined** (with the
reason). A module that is off and unrecorded is not a decision; it is an omission.

`just health` reads this file. Any row still marked `TODO` is reported as unrecorded, and
`just health` exits non-zero until it is resolved.

## Decision

All modules were enabled at generation time. Nothing is deferred or declined.

## Consequences

Until every `TODO` above is resolved, the health surface cannot distinguish a module that was
deliberately left out from one that was forgotten.
