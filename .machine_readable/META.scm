;; SPDX-License-Identifier: PMPL-1.0-or-later
;; META.scm - Meta-level information for ensaid-spec

(meta
  (version "1.0.0")
  (last-updated "2026-03-15")

  (architecture-decisions
    ((adr-001
      (title "Specification Extracted from PanLL")
      (status "accepted")
      (date "2026-03-15")
      (context
        "eNSAID was originally defined inline within PanLL's design documents. "
        "Per DD-001 (V for Vendetta Principle), the spec must live in its own "
        "repo with its own governance so that alternative implementations can exist.")
      (decision
        "Extract eNSAID specification into ensaid-spec repository. "
        "PanLL remains the reference implementation. The spec is independent.")
      (consequences
        (positive
          ("Anyone can build an eNSAID-compliant environment without forking PanLL")
          ("Spec evolves at its own pace, independent of PanLL releases")
          ("Contributors contribute to the ecosystem, not just one tool"))
        (negative
          ("Maintaining spec and implementation in sync requires discipline")
          ("Spec may diverge from PanLL if not actively cross-referenced"))))

    ((adr-002
      (title "AsciiDoc for Specification Documents")
      (status "accepted")
      (date "2026-03-15")
      (context
        "Need a document format for formal specification language.")
      (decision
        "Use AsciiDoc (.adoc) for all specification sections. "
        "AsciiDoc supports structured documents, tables, cross-references, "
        "and renders well on GitHub and via Antora/Jekyll.")
      (consequences
        (positive
          ("Rich formatting for specification tables and requirement numbering")
          ("Consistent with PanLL's README.adoc and ROADMAP.adoc")
          ("Tooling support for publishing"))
        (negative
          ("Less widely known than Markdown")))))

    ((adr-003
      (title "RFC 2119 Keywords for Normative Language")
      (status "accepted")
      (date "2026-03-15")
      (context
        "Specification language needs precise normative semantics.")
      (decision
        "Use RFC 2119 keywords (MUST, SHOULD, MAY) in uppercase when carrying "
        "normative meaning. This is standard practice for Internet and W3C specifications.")
      (consequences
        (positive
          ("Unambiguous requirement levels")
          ("Familiar to specification readers")
          ("Enables automated conformance testing"))
        (negative
          ("Requires discipline to use keywords only when normative")))))

  (development-practices
    (documentation-approach
      "Each spec section follows: Abstract, Motivation, Specification, "
      "Conformance, Reference Implementation.")

    (versioning-scheme
      "Semantic versioning. v0.x.y = draft (breaking changes allowed). "
      "v1.0.0+ = stable (breaking changes require new major version).")

    (license-policy
      "All specification text PMPL-1.0-or-later. "
      "Third-party contributions under same license."))

  (design-rationale
    (separation-of-concerns
      "The spec defines WHAT an eNSAID environment must do. "
      "PanLL defines HOW the reference implementation does it. "
      "Alternative implementations may use different technologies "
      "(different languages, frameworks, architectures) while remaining "
      "eNSAID-compliant.")

    (v-for-vendetta-principle
      "You can kill PanLL. You cannot kill the idea. Ideas are bulletproof. "
      "The spec exists so that the idea survives any single implementation.")))
