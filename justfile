set shell := ["bash", "-euo", "pipefail", "-c"]

# List the document-source commands.
default:
    @just --list

# Validate command formatting and all tracked Markdown file links without network access.
check:
    just --fmt --check
    git ls-files -z -- '*.md' | xargs -0 lychee --offline --no-progress

# Run the complete source-only validation.
verify: check
