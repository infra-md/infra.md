# Vision summary for `INFRA.md`

## Core Idea

Create a repository-level file called **INFRA.md** that describes the
*infrastructure intent* of an application in human-readable Markdown.

For common questions, see [FAQ.md](FAQ.md) or the rendered page
[faq.html](faq.html).

The goal is to use AI as a bridge between:

- Infrastructure intent (`INFRA.md`)
- Organizational guard rails (`INFRA-POLICY.md`)
- Infrastructure-as-Code output (e.g. Terraform, but not limited to)

Reducing the cognitive load of infrastructure design for software engineers,
while keeping implementation aligned with organizational standards.

`INFRA.md` is:

- Cloud-agnostic
- Human-readable
- Engineer-friendly
- Structured by convention, not strict schema

`INFRA.md` is **NOT**:

- a manifest
- provider-specific
- Terraform-specific
- an implementation document

---

## Separation of Concerns

`INFRA.md` is not intended to replace or overlap with [AGENTS.md](https://agents.md) or other documentation.

Each file has a distinct responsibility.

### INFRA.md

Describes the application infrastructure intent:

- Purpose (1–2 sentences, optionally referencing `README.md`)
- Behaviour
- Capabilities (messaging, storage, secrets)
- Usage patterns
- Expected traffic characteristics
- Non-functional requirements (privacy sensitivity, residency, availability, cost sensitivity)

Guidelines:

- Written in natural language
- No provider-specific terminology
- No implementation details
- Written and maintained by Software Engineers
- Lives at the root of the application repository (or relevant subdirectory in a monorepo)

### INFRA-POLICY.md

Defines how infrastructure intent is implemented within the organization:

- Targeted infrastructure (e.g. GCP, AWS, Azure or on-premises)
- Cloud provider specifics (e.g. VPC design, IAM patterns, resource sharing, monitoring standards)
- Guard rails (security, linting, restrictions)
- Approved modules, examples and implementation patterns
- Mapping from **intent** to **implementation**

Guidelines:

- May be technical and provider-specific
- Written and maintained by Cloud/Platform Engineers
- Updated based on learnings from supporting teams and evolving organizational standards
- Typically lives in a central organizational repository

### AGENTS.md

Defines how AI agents operate within the repository:

- Controls agent behaviour
- Instructs the agent to read `INFRA.md` (and `INFRA-POLICY.md` when relevant)
- May restrict output paths or workflows

See [https://agents.md](https://agents.md) for more details.

---

## AI Usage Model

AI acts as a *compiler* that translates infrastructure intent into
infrastructure-as-code, while respecting guard rails and organizational patterns.

The agent leverages curated examples, approved modules, and policy constraints
defined by the organization.

### Flow

1. A Software Engineer writes `INFRA.md` describing infrastructure intent
2. The AI agent reads `INFRA.md`, `INFRA-POLICY.md`, and optionally the application code
3. The agent generates infrastructure-as-code (e.g. Terraform)
4. The agent may suggest improvements or optimizations aligned with organizational standards
5. Human review and validation remain part of the workflow

---

## Scope philosophy

This is:

- an idea
- a working model
- a starting point for teams to experiment with and adapt

This is **NOT**:

- a product
- a formal standard
- an attempt to introduce rigid limitations
- a replacement for existing tooling
