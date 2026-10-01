# Contributing to the eNSAID Specification

## What is eNSAID?

eNSAID (Environment for NeSy-Agentic Integrated Development) is an open
specification for neurosymbolic development environments. Contributions
improve the specification that all implementations can benefit from.

## How to Contribute

### Specification Changes

1.  **Open an issue** describing the change you want to make and why.

2.  **Fork the repository** and create a branch.

3.  **Write spec language** using RFC 2119 keywords (MUST, SHOULD, MAY).

4.  **Include conformance criteria** – how would an implementation test
    compliance?

5.  **Submit a pull request** referencing the issue.

### New Specification Sections

If you believe eNSAID needs a new section:

1.  Open an issue with the proposed section’s abstract and motivation.

2.  Discuss with maintainers before writing the full section.

3.  Follow the existing section structure (Abstract, Motivation,
    Specification, Conformance, Reference Implementation).

### Bug Reports and Clarifications

- Ambiguous spec language? Open an issue with the specific section and
  sentence.

- Contradictions between sections? Open an issue referencing both
  sections.

- Missing conformance criteria? Open an issue with a proposed test.

## Style Guide

- Use AsciiDoc (`.adoc`) for all specification documents.

- Use RFC 2119 keywords in UPPERCASE when they carry normative meaning.

- Number requirements with section-specific prefixes (e.g., `S01-1`,
  `S02-3`).

- Include a Reference Implementation section pointing to PanLL (or other
  implementations).

- Include SPDX headers in all files.

## Terminology

- **Panels**, not “panes” – this is a core invariant.

- **Human Operator**, not “user” – emphasises agency.

- **Machine Agent**, not “AI” or “bot” – emphasises autonomy.

- **Barycentre**, not “centre” – the shared gravitational mass of the
  Binary Star.

## License

All contributions are under MPL-2.0 (Palimpsest License). By
contributing, you agree to license your contribution under these terms.

## Code of Conduct

Be respectful, constructive, and focused on improving the specification.

## Signed commits

Every commit that reaches the default branch must be signed; a ruleset refuses
unsigned pushes. Estate policy:
[SIGNING-POLICY](https://github.com/hyperpolymath/standards/blob/main/docs/SIGNING-POLICY.adoc).

- **People and interactive agents** sign with an SSH key registered on GitHub
  as a *signing* key (`gpg.format=ssh`, `user.signingkey=<key>.pub`,
  `commit.gpgsign=true`). The committer email must be verified on that account.
- **Apps, bots and workflows** never `git push` local commits. They write
  through the API (`createCommitOnBranch` or the estate `signed-push` action)
  so that GitHub signs each commit.
- Merge PRs with **squash**. The ruleset checks every commit on the PR branch,
  not just the result, so one unsigned commit blocks the merge. Re-create such a
  branch with signed commits (`git cherry-pick -S`) and open a new PR.
  Rebase-merge replays commits unsigned and is disabled.
