# Screenshot evidence index

[Project overview](README.md)

This selected set retains the historical evidence numbers, including gaps. Filenames and folder capitalisation match this checkout. Where a reviewed publication copy was available, it replaced the pixels at the established repository path without changing the evidence number.

| # | File | What it supports |
|---:|---|---|
| 01 | [01-resource-groups-and-tags.png](Governance/Screenshots/01-resource-groups-and-tags.png) | Resource groups and tags |
| 02 | [02-entra-id-users.png](Governance/Screenshots/02-entra-id-users.png) | Synthetic lab identity list; personal fields hidden |
| 03 | [03-cost-budget-alert-thresholds.png](Governance/Screenshots/03-cost-budget-alert-thresholds.png) | Budget configuration, not spending enforcement |
| 04 | [04-resource-group-delete-lock.png](Governance/Screenshots/04-resource-group-delete-lock.png) | Delete-lock configuration |
| 07 | [07-rbac-contributor-assignment- az104-compute- access control IAM.png](Governance/Screenshots/07-rbac-contributor-assignment-%20az104-compute-%20access%20control%20IAM.png) | IT administration group assigned Contributor at Compute scope |
| 08 | [08-rbac-reader-assignment - RG-az104-storage - Finance - read only.png](Governance/Screenshots/08-rbac-reader-assignment%20-%20RG-az104-storage%20-%20Finance%20-%20read%20only.png) | Finance group assigned Reader at Storage scope |
| 09 | [09-rbac-auditor-least-privilege.png](Governance/Screenshots/09-rbac-auditor-least-privilege.png) | External-auditor Reader assignments across the lab resource groups |
| 10 | [10-rbac-inheritance.png](Governance/Screenshots/10-rbac-inheritance.png) | Direct and inherited Reader assignments at Storage scope |
| 11 | [11-rbac-effective-permissions.png](Governance/Screenshots/11-rbac-effective-permissions.png) | Effective group-derived and inherited permissions |
| 12 | [12-azure-policy-deny-test.png](Governance/Screenshots/12-azure-policy-deny-test.png) | Required-tag policy denial |
| 13 | [13-readonly-lock-blocked-change.png](Governance/Screenshots/13-readonly-lock-blocked-change.png) | ReadOnly lock blocked a tag change |
| 14 | [14-allowed-locations-policy-deny.png](Governance/Screenshots/14-allowed-locations-policy-deny.png) | Allowed-location policy denial |
| 15 | [15-policy-exemption-success.png](Governance/Screenshots/15-policy-exemption-success.png) | Successful deployment after the exemption exercise; not independent proof of the exemption assignment |
| 16 | [16-blob-container-private.png](Storage/Screenshots/16-blob-container-private.png) | Test container and Blob presence; not proof of anonymous-access state |
| 17 | [17-storage-lifecycle-policy.png](Storage/Screenshots/17-storage-lifecycle-policy.png) | Last-modified lifecycle rule configuration |
| 18 | [18-storage-data-rbac.png](Storage/Screenshots/18-storage-data-rbac.png) | Finance group assigned Blob data-reader access at container scope |
| 19 | [19-storage-reader-write-denied.png](Storage/Screenshots/19-storage-reader-write-denied.png) | Blob deletion denied under Microsoft Entra authentication |
| 20 | [20-sas-readonly-configuration.png](Storage/Screenshots/20-sas-readonly-configuration.png) | SAS settings only; not token execution |
| 21 | [21-azure-files-share.png](Storage/Screenshots/21-azure-files-share.png) | Azure Files share and test file |
| 22 | [22-azure-files-smb-mount.png](Storage/Screenshots/22-azure-files-smb-mount.png) | SMB share mounted as `Z:` |
| 23 | [23-storage-firewall-selected-network.png](Storage/Screenshots/23-storage-firewall-selected-network.png) | Selected-network public endpoint configuration |
| 24 | [24-storage-firewall-access-denied.png](Storage/Screenshots/24-storage-firewall-access-denied.png) | Storage request denied by the selected-network restriction |
| 25 | [25-vnet-web-subnet.png](Networking/Screenshots/25-vnet-web-subnet.png) | `SNET-WEB` range `10.0.1.0/24` |
| 26 | [26-nsg-rdp-restricted.png](Networking/Screenshots/26-nsg-rdp-restricted.png) | RDP allow rule limited to one redacted `/32` source |
| 27 | [27-vm-overview.png](Compute/Screenshots/27-vm-overview.png) | VM size, location and VNet/subnet placement |
| 28 | [28-vm-managed-data-disk-troubleshooting.png](Compute/Screenshots/28-vm-managed-data-disk-troubleshooting.png) | Format error corrected and `F:` volume verified |
| 29 | [29-managed-identity-blob-reader.png](Compute/Screenshots/29-managed-identity-blob-reader.png) | VM identity assigned Blob data-reader role; full scope not visible |
| 30 | [30-managed-identity-blob-access-troubleshooting.png](Compute/Screenshots/30-managed-identity-blob-access-troubleshooting.png) | Failed request followed by successful Blob read |
| 31 | [31-vm-custom-script-extension.png](Compute/Screenshots/31-vm-custom-script-extension.png) | Script content and expected local file output |
| 32 | [32-vnet-multiple-subnets.png](Networking/Screenshots/32-vnet-multiple-subnets.png) | WEB and APP subnet ranges in the PROD VNet |
| 33 | [33-nsg-web-to-app-8080.png](Networking/Screenshots/33-nsg-web-to-app-8080.png) | TCP 8080 allow rule; default VNet allow remains |
| 34 | [34-route-table-associated-subnet.png](Networking/Screenshots/34-route-table-associated-subnet.png) | APP route table associated with `SNET-APP` |
| 35 | [35-udr-default-route-internet.png](Networking/Screenshots/35-udr-default-route-internet.png) | Custom default route with Internet next hop |
| 36 | [36-effective-routes-web-vm.png](Networking/Screenshots/36-effective-routes-web-vm.png) | WEB NIC system routes before route-table association |
| 37 | [37-effective-security-rules-web-vm.png](Networking/Screenshots/37-effective-security-rules-web-vm.png) | Effective NIC NSG rules; personal source IP hidden |
| 38 | [38-network-watcher-connection-troubleshoot.png](Networking/Screenshots/38-network-watcher-connection-troubleshoot.png) | TCP 8080 destination unreachable while NSG and next-hop checks passed |
| 39 | [39-network-watcher-next-hop.png](Networking/Screenshots/39-network-watcher-next-hop.png) | Baseline `VirtualNetwork` system-route decision |
| 41 | [41-route-table-associated-snet-web.png](Networking/Screenshots/41-route-table-associated-snet-web.png) | WEB route table associated with `SNET-WEB` |
| 42 | [42-next-hop-udr-nva-unreachable.png](Networking/Screenshots/42-next-hop-udr-nva-unreachable.png) | Invalid NVA route returned next-hop type None |
| 43 | [43-effective-routes-broken-nva-udr.png](Networking/Screenshots/43-effective-routes-broken-nva-udr.png) | Active UDR with effective next-hop type None |
| 44 | [44-next-hop-restored-virtualnetwork.png](Networking/Screenshots/44-next-hop-restored-virtualnetwork.png) | Restored system route, not application connectivity |
| 45 | [45-management-vnet-subnet.png](Networking/Screenshots/45-management-vnet-subnet.png) | Captured `default` management subnet at `10.1.0.0/24` |
| 46 | [46-vnet-peering-prod-mgmt-connected.png](Networking/Screenshots/46-vnet-peering-prod-mgmt-connected.png) | Connected PROD-to-MGMT peering |
| 47 | [47-effective-routes-vnet-peering.png](Networking/Screenshots/47-effective-routes-vnet-peering.png) | Active route to the MGMT address space through VNet peering |
| 48 | [48-private-dns-vnet-links.png](Networking/Screenshots/48-private-dns-vnet-links.png) | PROD DNS link completed while MGMT link remained in progress |
| 49 | [49-private-dns-a-record-web01.png](Networking/Screenshots/49-private-dns-a-record-web01.png) | `web01` private DNS A record |
| 50 | [50-private-dns-resolution-test.png](Networking/Screenshots/50-private-dns-resolution-test.png) | A and CNAME resolution from WEB01 |
| 51 | [51-private-endpoint-nic-private-ip.png](Networking/Screenshots/51-private-endpoint-nic-private-ip.png) | Private endpoint NIC address |
| 52 | [52-private-endpoint-dns-resolution.png](Networking/Screenshots/52-private-endpoint-dns-resolution.png) | Private DNS resolution, not a data-transfer test |
| 53 | [53-activity-log-diagnostic-setting.png](Monitoring/Screenshots/53-activity-log-diagnostic-setting.png) | Activity Log export configuration |
| 54 | [54-log-analytics-azureactivity-kql.png](Monitoring/Screenshots/54-log-analytics-azureactivity-kql.png) | KQL returned an ingested management event |
| 55 | [55-vm-cpu-alert-action-group.png](Monitoring/Screenshots/55-vm-cpu-alert-action-group.png) | CPU alert review, not a fired alert |
| 56 | [56-vm-backup-policy-configuration.png](Monitoring/Screenshots/56-vm-backup-policy-configuration.png) | Daily VM backup policy and retention settings |
| 57 | [57-vm-backup-recovery-points.png](Monitoring/Screenshots/57-vm-backup-recovery-points.png) | Four recovery points, not restore success |
| 58 | [58-vm-file-recovery-workflow.png](Monitoring/Screenshots/58-vm-file-recovery-workflow.png) | File Recovery workflow; credential hidden |
| 59 | [59-powershell-resource-inventory.png](Automation/Screenshots/59-powershell-resource-inventory.png) | Corrected PowerShell resource inventory command and output |
| 60 | [60-powershell-tag-merge.png](Automation/Screenshots/60-powershell-tag-merge.png) | Existing and merged tag values |
| 61 | [61-powershell-nsg-security-rule.png](Automation/Screenshots/61-powershell-nsg-security-rule.png) | Temporary NSG inbound rule verification |
| 62 | [62-bicep-what-if-preview.png](Automation/Screenshots/62-bicep-what-if-preview.png) | Create preview, not deployment |
| 63 | [63-bicep-deployment-success.png](Automation/Screenshots/63-bicep-deployment-success.png) | Successful deployment status |
| 64 | [64-bicep-what-if-modify.png](Automation/Screenshots/64-bicep-what-if-modify.png) | One modification reported; property diff not visible |
| 65 | [65-bicep-update-verified.png](Automation/Screenshots/65-bicep-update-verified.png) | Deployed NSG rule verified on port 8443 |
| 66 | [66-bicep-parameter-file-what-if.png](Automation/Screenshots/66-bicep-parameter-file-what-if.png) | Parameter-file preview |
| 67 | [67-bicep-parameter-deployment-verified.png](Automation/Screenshots/67-bicep-parameter-deployment-verified.png) | Deployed parameterised NSG rule query |
| 68 | [68-bicep-vnet-subnet-nsg-verified.png](Automation/Screenshots/68-bicep-vnet-subnet-nsg-verified.png) | Bicep-created subnet resolved to its associated NSG |

## Gaps and naming decisions

No screenshots were renumbered. Evidence 06 and 40 remain absent. Evidence 05 was removed from the current publication tree because it proved only a generic successful deployment and was superseded by the more clearly bounded evidence 15.

Files supplied under generic or malformed names were matched by their visible contents. Exact duplicates were not added a second time; evidence 68 was normalised from the supplied `.pn.png` filename to the established `.png` convention. Evidence 20 keeps the repository's established filename, including `readonly`.

See [Security review](SECURITY_REVIEW.md) for the publication boundary and Git-history caveat.
