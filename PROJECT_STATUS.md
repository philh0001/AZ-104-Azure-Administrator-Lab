# Project status and evidence boundaries

[Project overview](README.md)

Status is based on the recorded lab work and selected captured results. “Completed” refers to the named exercise, not mastery of an AZ-104 domain, a current Azure inventory or a production implementation.

## Completed with captured results

| Exercise | What the evidence establishes |
|---|---|
| Resource organisation and tagging | Resource groups and tags are visible; the PowerShell query shows a merged tag |
| RBAC | Scoped group assignments, an external-auditor Reader pattern, inherited access, a test user's effective permissions and a denied Blob delete are visible |
| Policy and locks | Required-tag and allowed-location denials; a ReadOnly lock blocked a tag change; a later deployment completed, although its screen does not independently prove the exemption configuration |
| Storage and compute | Azure Files mounted; storage network denial; a healthy formatted data volume; Blob data-reader assignment and successful authenticated read; VM overview and test-script output |
| Routing | Baseline routes, route-table associations and diagnostics are captured; the deliberately bad UDR was inspected and removed; Next Hop returned the system route |
| Peering and DNS | Connected peering, an active peering route, DNS links and record configuration, and A/CNAME resolution from WEB01 |
| Private Endpoint | Endpoint NIC private address and Storage DNS resolution to that address |
| Logs | Activity Log export configuration and an ingested `AzureActivity` query result |
| Backup | Daily policy settings and four crash-consistent recovery points with visible storage tiers |
| PowerShell | Resource inventory, tag merge and temporary NSG-rule verification |
| Bicep | Create preview, successful deployment, modify preview, verified 8443 update, parameter-file preview, deployed-rule verification and subnet-to-NSG association verification |

## Configured or reported with narrower evidence

| Exercise | Evidence limitation |
|---|---|
| Lifecycle | Rule configured; no observed 30-day automatic transition |
| SAS | Read-only, HTTPS-only user-delegation settings; no captured use or expiry test |
| Storage selected networks | Public endpoint restricted to selected networks; public endpoint not shown as disabled |
| NSG TCP 8080 | Custom allow rule exists, but the default VNet allow rule remains and no APP workload tested isolation |
| CPU alert and email | Review page records the condition and Action Group; no fired alert or received email |
| Cleanup | Several actions were reported; no final subscription inventory or billing export was audited |

## Workflows inspected rather than recovery tested

I inspected Create new VM, Replace existing disks and File Recovery. A recovery executable was downloaded and unmounting was reported, but no restored VM or recovered test file was validated.

NAT Gateway, Load Balancer, gateway transit, VM scale sets, application availability and several resilience options were covered through explanations or questions. They are not presented as additional deployed infrastructure.

## Planned or not evidenced

Further App Service/container revision and practice-assessment work remain learning plans. The owner-supplied `az104-nsg.bicep` and both parameter files have now been confirmed. Comparing the remaining recovered network-stack template and transcribed PowerShell extension script with any original downloads is still required before their provenance can be upgraded.

No new lab, deployment or chargeable test is required to use this portfolio documentation. AZ-104 certification remains in progress; the exam is booked for 16 October 2026.
