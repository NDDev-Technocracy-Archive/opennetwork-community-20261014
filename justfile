set shell := ["bash", "-euo", "pipefail", "-c"]

# List the document-source commands.
default:
    @just --list

# Check local Markdown links, workflows and Git history without network access.
check:
    just --fmt --check
    git ls-files -z -- '*.md' | xargs -0 lychee --offline --no-progress
    actionlint
    zizmor --offline --no-progress .github
    gitleaks git --no-banner --redact .

# Run the complete source-only validation.
verify: check
