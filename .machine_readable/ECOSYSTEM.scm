;; SPDX-License-Identifier: PMPL-1.0-or-later
;; ECOSYSTEM.scm - Ecosystem position for ensaid-spec

(ecosystem
  (version "1.0.0")
  (last-updated "2026-03-15")

  (identity
    (name "ensaid-spec")
    (full-name "eNSAID Specification")
    (tagline "Open specification for neurosymbolic development environments")
    (type "specification")
    (category "neurosymbolic-standards")
    (maturity "draft")
    (version "0.1.0"))

  (purpose
    "eNSAID (Environment for NeSy-Agentic Integrated Development) defines the open "
    "standard for neurosymbolic development environments. It specifies the Binary Star "
    "architecture, three-panel model, cognitive governance stack, panel lifecycle, "
    "contract format, taxonomy, contractile governance, constraint propagation, and "
    "translation honesty vocabulary.")

  (position-in-ecosystem
    (domain "neurosymbolic-standards")
    (role "specification")
    (scope "Defines what an eNSAID-compliant environment must implement")

    (unique-value-proposition
      "The first open specification for neurosymbolic development environments. "
      "Separates the idea (eNSAID) from the tool (PanLL) so that the ecosystem "
      "can grow beyond any single implementation."))

  (related-projects
    ((project "panll")
     (relationship "reference-implementation")
     (nature "PanLL is the reference implementation of eNSAID. The spec was extracted from PanLL's design decisions (DD-001 through DD-018) and Phase 3 constraint core architecture.")
     (integration-status "active")
     (notes "PanLL implements all 9 spec sections. PanLL's ECOSYSTEM.scm should reference ensaid-spec."))

    ((project "typell")
     (relationship "related-standard")
     (nature "TypeLL provides the type verification kernel used by PanLL. The eNSAID spec references TypeLL integration in the constraint propagation and translation honesty sections.")
     (integration-status "referenced")
     (notes "TypeLL bridges report translation honesty levels per Section 09."))

    ((project "reposystem")
     (relationship "tooling-consumer")
     (nature "The contractile governance system (Section 07) is implemented by the reposystem monorepo's contractile CLI.")
     (integration-status "referenced")
     (notes "K9 validators and the must/trust/dust/lust tiers originate in reposystem."))

    ((project "stapeln")
     (relationship "infrastructure-provider")
     (nature "Stapeln provides the hardened container isolation tier referenced in Section 05 (Panel Contract Format).")
     (integration-status "referenced")
     (notes "Hardened Pod tier uses Stapeln + Chainguard images."))

    ((project "ochrance")
     (relationship "sibling-standard")
     (nature "Ochrance defines neurosymbolic filesystem verification. Both projects share the PMPL license and Idris2 formal verification approach.")
     (integration-status "none")
     (notes "Complementary standards: eNSAID for development environments, Ochrance for filesystem integrity.")))

  (governance
    (maintainers
      ((name "Jonathan D.A. Jewell")
       (email "j.d.a.jewell@open.ac.uk")
       (role "creator")
       (github "hyperpolymath")))

    (contribution-model "open-source")
    (decision-making "BDFL with community input")
    (license "PMPL-1.0-or-later")
    (repository "https://github.com/hyperpolymath/ensaid-spec"))

  (metadata
    (tags "eNSAID" "specification" "neurosymbolic" "binary-star" "panels" "cognitive-governance")
    (repository-url "https://github.com/hyperpolymath/ensaid-spec")))
