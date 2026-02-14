# FAQ for `INFRA.md`

## Why not just write Terraform?

Terraform describes implementation. `INFRA.md` describes intent.
Intent is stable. Implementation evolves.

`INFRA.md` allows AI to generate compliant Terraform (or other IaC) while reducing cognitive load for engineers. Allowing Software Engineers to focus on creating value. Not being burdened by working out how to deploy their applications.

---

## Is this replacing Terraform?

No! `INFRA.md` does not replace Terraform.

It complements it by acting as an intent layer.
It may lead to AI-generated Terraform, but human review and iteration remain essential.

---

## Is this meant to replace engineers or "steal jobs"?

No! The intent is augmentation, not replacement.

`INFRA.md` is designed to reduce repetitive infrastructure translation work so engineers can focus on higher-value work: architecture, trade-offs, reliability, security, and product delivery.

Human ownership, review, and accountability remain central. Leveraging AI to handle the "plumbing" of infrastructure design can empower engineers to be more effective and creative, not replace them.

---

## Why not put everything in AGENTS.md?

`AGENTS.md` defines agent behavior.
`INFRA.md` defines infrastructure intent.

They operate at different abstraction levels.

Nevertheless, you could very well store both in `AGENTS.md` if you prefer.
The goal is to keep concerns separated for clarity and maintainability, but organizational preferences may vary.

---

## Is this Kubernetes in disguise?

No! `INFRA.md` avoids resource-level modeling.

It focuses on intent and high-level design, not specific resources or configurations.

---

## Is this a standard?

No! This is an experiment and working model.

---

## Where can I find this project on GitHub?

You can find it at:
[https://github.com/infra-md/infra.md/](https://github.com/infra-md/infra.md/)
