# Architecture

This repository was generated from a repository template. Modules are enabled by *condition*:
each one states the trigger that justifies it, because a module with no trigger is maintenance
nobody asked for.

## Modules

| Module | Enabled | Condition |
| :--- | :--- | :--- |
| `core` | yes | always present |
| `commits` | yes | wants enforced history |
| `ci` | yes | any automated check |
| `deps` | yes | repo has any dependency |
| `docs` | yes | architecture exists |
| `contributing` | yes | accepts outside contributions |
| `env` | yes | reproducible local tooling |
| `security` | yes | public / external users |
| `release` | yes | publishes a versioned artifact |
| `ops` | yes | deployed / running |

## Repository state

`just health` reports every module in one of four states, from three sources:

| Source | Answers |
| :--- | :--- |
| `.copier-answers.yml` | which modules are enabled |
| `scripts/health.sh` file lists | whether an enabled module is finished |
| `docs/adr/0001-initial-deferrals.md` | why a disabled module is disabled |

| Glyph | State |
| :--- | :--- |
| ✅ | on — complete |
| 🟡 | on — incomplete: files are still stubs |
| ⏸ | deferred, with its trigger recorded |
| ⛔ | declined, with its reason recorded |
| ❓ | unrecorded: disabled with no decision. `just health` fails |

## Generated files

Everything here is generated from a template. Hand-editing a generated file makes the next
sync conflict, so customisations belong in files no module owns. A failed sync is the intended
outcome when a repository has diverged.
