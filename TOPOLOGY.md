<!-- SPDX-License-Identifier: MPL-2.0 -->
<!-- Copyright (c) 2026 Jonathan D.A. Jewell (hyperpolymath) <j.d.a.jewell@open.ac.uk> -->

# TOPOLOGY.md — ensaid-spec

## Purpose

Open specification for eNSAID (Environment for NeSy-Agentic Integrated Development): neurosymbolic IDEs where human developers and AI agents co-orbit as peers in a Binary Star architecture. Defines co-orbit model, three-panel UI, Cognitive Governance Stack.

## Module Map

```
ensaid-spec/
├── README.adoc                # Binary Star model, panel architecture, governance
├── spec/
│   ├── binary-star-model.adoc # Human-machine peer co-design
│   ├── panel-architecture.adoc # Panel-L, Panel-N, Panel-W
│   ├── cognitive-governance.adoc # Anti-Crash Gate, Vexometer, Humidity, Drift
│   └── ... (detailed sections)
├── examples/
│   └── ... (reference implementations)
└── LICENSE                    # MPL-2.0
```

## Data Flow

```
[Developer Actions] ◄--► [Agent Context] ──► [Shared Workspace]
        ↓                         ↓                    ↓
   [Panel-W]              [Panel-L/Panel-N]    [Cognitive Governance]
```

## Key Invariants

- Binary Star: human and agent are gravitational equals, not master-slave
- Three-panel UI: symbolic (code), neural (ML), world (integration)
- Governance Stack prevents agent drift, ensures anti-crash properties
