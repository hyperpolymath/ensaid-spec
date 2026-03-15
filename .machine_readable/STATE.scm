;; SPDX-License-Identifier: PMPL-1.0-or-later
;; STATE.scm - Current project state for ensaid-spec

(state
  (metadata
    (version "0.1.0")
    (last-updated "2026-03-15")
    (author "Jonathan D.A. Jewell"))

  (project-context
    (name "ensaid-spec")
    (type "specification")
    (description "eNSAID open specification for neurosymbolic development environments")
    (status "initial-extraction"))

  (current-position
    (phase "v0.1.0 initial draft")
    (completion-percentage 30)
    (notes
      "9 specification sections extracted from PanLL design decisions. "
      "All sections in draft status. Spec language uses RFC 2119 keywords. "
      "Each section has Abstract, Motivation, Specification, Conformance, "
      "and Reference Implementation subsections."))

  (route-to-mvp
    ((milestone "v0.1.0 - Initial Draft")
     (status "complete")
     (tasks
       ("Extract 9 spec sections from PanLL design documents" . "done")
       ("Write proper spec language with MUST/SHOULD/MAY" . "done")
       ("Create repository boilerplate" . "done")
       ("Publish to GitHub" . "done")))

    ((milestone "v0.2.0 - Community Review")
     (status "not-started")
     (tasks
       ("Solicit review from early adopters" . "todo")
       ("Resolve ambiguities identified during review" . "todo")
       ("Add conformance test suite outline" . "todo")
       ("Cross-reference between sections" . "todo")))

    ((milestone "v0.3.0 - Conformance Tests")
     (status "not-started")
     (tasks
       ("Define machine-readable conformance tests per section" . "todo")
       ("Build minimal conformance checker" . "todo")
       ("Validate PanLL against conformance tests" . "todo"))))

  (blockers-and-issues
    ((issue "Spec sections need cross-referencing")
     (severity "medium")
     (notes "AsciiDoc cross-references between sections not yet wired")))

  (critical-next-actions
    ("Announce spec extraction to community")
    ("Update PanLL ECOSYSTEM.scm to reference ensaid-spec")
    ("Begin conformance test outline")))
