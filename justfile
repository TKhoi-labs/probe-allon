# probe-allon — task runner.
# `just health` is the single entry point for repository state.
set shell := ["bash", "-euo", "pipefail", "-c"]

# Report the five-state module manifest.
health:
    scripts/health.sh

# Run every local check before pushing.
check: health

# Scan the working tree for committed secrets.
secrets:
    gitleaks detect --no-banner --redact

# Regenerate CHANGELOG.md from Conventional Commits.
changelog:
    git-cliff --output CHANGELOG.md

# List available recipes.
default:
    @just --list
