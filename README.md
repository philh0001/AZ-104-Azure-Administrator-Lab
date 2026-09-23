# Azure Administration and Security — AZ-104 Personal Lab

This repository is a written walkthrough of my personal Microsoft Azure learning project. It records what I configured, why I configured it, how I tested it, what happened and what I learned.

- **Author:** Philip Hope
- **Context:** Personal learning environment — not workplace or production experience
- **Certification:** AZ-104 preparation in progress; exam booked for **16 October 2026**

## Why I undertook this project

I built the lab to understand how Azure administrative controls work together and to practise diagnosing configuration problems from evidence rather than guesswork. The work supports my development towards an Information Security Officer role, particularly in access control, governance, auditability, controlled change, troubleshooting and recovery awareness.

The practical work had already taken place when I prepared this documentation. This repository is therefore a historical record, not a verified inventory of resources that are currently running. It is also not a production baseline, an organisation-wide implementation or a claim of workplace experience.

## What I completed

| Area | Practical work recorded | Evidence boundary |
|---|---|---|
| Identity and governance | Lab users and groups; scoped Reader and Contributor assignments; effective permissions; tags, budget alerts, locks and Azure Policy denial tests | Selected lab controls, not a tenant-wide access or compliance review |
| Storage and compute | Blob and Azure Files exercises; lifecycle and SAS configuration; a managed data disk; VM managed identity; an authenticated Blob read; Custom Script Extension output | SAS settings and lifecycle configuration were inspected; SAS use and automatic lifecycle execution were not captured |
| Networking | VNets, subnets, NSGs, route tables, Network Watcher, peering, Private DNS and a Blob private endpoint | Route and DNS results are separate from end-to-end application tests |
| Monitoring and backup | Activity Log export to Log Analytics; successful KQL query; CPU alert configuration; VM recovery points and recovery-workflow inspection | No captured alert firing, email delivery, restored VM or recovered-file test |
| Automation | PowerShell inventory, tag and NSG work; Bicep what-if, deployment, verified port update, parameter-file and subnet-association exercises | Three Bicep artefacts are confirmed from the owner-supplied originals; the network-stack template and extension script retain recovered/transcribed provenance |

Detailed status and limitations are recorded in [Project status](PROJECT_STATUS.md).

## Walkthrough chapters

| Chapter | What the walkthrough covers |
|---|---|
| [Identity](Identity/readme.md) | Lab identities, groups and the distinction between identity and authorisation |
| [Governance](Governance/readme.md) | RBAC, tags, budgets, locks and policy enforcement tests |
| [Storage](Storage/readme.md) | Blob lifecycle, SAS, Azure Files and storage network restrictions |
| [Compute](Compute/readme.md) | VM configuration, managed disk, managed identity and extension testing |
| [Networking](Networking/readme.md) | Subnets, NSGs, routing fault diagnosis, peering, DNS and Private Link |
| [Monitoring](Monitoring/readme.md) | Activity Logs, KQL, alerts, backup evidence and recovery limitations |
| [Automation](Automation/readme.md) | PowerShell and the Bicep files used in the recorded exercises |
| [Troubleshooting](troubleshooting/readme.md) | Symptoms, investigation, changes, verification and limits |
| [Architecture](Architecture/readme.md) | Historical lab layout and the separate temporary Bicep stage |

The [evidence index](EVIDENCE_INDEX.md) maps the selected screenshots to the claims they support. Historical numbering is retained, including gaps.

## Lab environment

I used a personal Azure subscription with Azure Portal, Cloud Shell, Azure PowerShell, Azure CLI and Bicep. The main resources were in UK South and were separated into Compute, Network, Storage and Monitoring resource groups. The lab used Microsoft Entra ID, Azure Virtual Machines, Azure Storage, Azure Virtual Network, Azure Monitor, Log Analytics and a Recovery Services vault.

I kept the exercises intentionally small and deallocated or removed temporary resources at points during the lab. This documentation does not independently verify the current subscription inventory, final cleanup state or billing.

## Security-relevant learning

The strongest lesson was to separate layers of evidence. A role assignment is not a network test; a DNS result is not a data-transfer test; a recovery point is not a successful restore; an alert review page is not proof that a notification arrived. The walkthrough therefore distinguishes configuration, functional testing, workflow inspection and planned learning.

The project demonstrates practical learning in least-privilege access, policy enforcement, resource protection, restricted management access, workload identity, logging, recoverability and reviewed infrastructure changes. It does not claim compliance certification, production ownership or a formal security audit.

## Completed, reviewed and planned

- **Completed with captured results:** selected RBAC and policy tests, storage and compute checks, route rollback, DNS resolution, Activity Log ingestion, the Bicep 8443 update and subnet-to-NSG verification.
- **Configured with narrower evidence:** lifecycle, SAS, CPU alert notification, the policy-exemption configuration behind the later successful deployment and parts of cleanup.
- **Reviewed rather than executed:** VM restore, disk replacement and File Recovery workflows.
- **Planned or theory-only:** further App Service/container revision, NAT Gateway, Load Balancer, gateway transit, VM scale sets and broader resilience scenarios.

AZ-104 remains in progress. I have not described myself as certified or as having passed the exam.

## Publication note

No Azure resources were created, restarted or changed for this documentation update. The current selected screenshots use reviewed publication copies, retain approved lab details and exclude readable credentials, personal email addresses, full Azure identifiers and public IP values. The [security review](SECURITY_REVIEW.md) records the remaining Git-history and pre-commit checks.
