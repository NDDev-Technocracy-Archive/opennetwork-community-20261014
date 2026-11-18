# OpenNetwork community snapshot

Retained reference snapshot of the former organization profile and community
health files. Its source checks are maintained here. Current repositories own
their current collaboration contracts; this snapshot changes no live organization profile.

- [Profile](profile/README.md)
- [Agent contract](AGENTS.md)
- [Contributing](CONTRIBUTING.md)
- [Governance](GOVERNANCE.md)
- [Code of conduct](CODE_OF_CONDUCT.md)
- [Security](SECURITY.md)
- [Support](SUPPORT.md)

Run `just check` for command formatting, local Markdown links, workflow lint and the Git history scan.
`just verify` runs the complete source-only check after integration. The workflow
and security gates use the released shared CI. No application test, build,
release/package publication or installed-profile behavior is claimed.
