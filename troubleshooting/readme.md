# Troubleshooting case notes

[Project overview](../README.md)

These were personal lab investigations. Deliberately introduced faults are labelled; they were not production incidents.

## 1. Non-compliant resource deployment

**Symptom:** My storage-account deployment was rejected.

**Investigation and result:** I opened the returned policy detail rather than assuming an RBAC problem. It stated that a `Project` tag was required.

![Required-tag policy denial returned by the storage deployment](../Governance/Screenshots/12-azure-policy-deny-test.png)

*Evidence 12: the resource request was denied by the configured required-tag policy.*

I ran a separate negative test in West US 2 and received the allowed-locations policy denial recorded in [Governance](../Governance/readme.md).

**What I learned:** A failed deployment can be the expected result of a working governance control. The evidence does not show a later policy exemption.

## 2. ReadOnly lock prevented a tag change

**Symptom:** My tag update returned `ScopeLocked`.

**Investigation and result:** I reviewed the lock rather than changing the user's permissions. The attempted tag edit remained blocked while the ReadOnly restriction was present.

![ScopeLocked error returned during a tag change](../Governance/Screenshots/13-readonly-lock-blocked-change.png)

*Evidence 13: the operation was blocked by the resource lock.*

**What I learned:** A Delete lock and a ReadOnly lock protect different operations. Changing the protection level for a justified task is different from removing governance without diagnosis.

## 3. Managed identity had a role, but the Blob read failed

**Symptom:** A token-authenticated request from WEB01 returned `AuthorizationFailure`.

**Checks:** I reviewed the managed identity, Blob data role, storage network configuration and request headers.

![Failed request followed by the later authenticated read returning test1](../Compute/Screenshots/30-managed-identity-blob-access-troubleshooting.png)

*Evidence 30: the same captured sequence records failure and later success.*

**Result and limit:** The request eventually returned `test1`. Several configuration and request steps occurred, so this image does not isolate a single root cause. The later Private Endpoint work was separate.

**What I learned:** Identity authorisation and network reachability need separate checks, and a role-assignment screenshot is not a functional data-access test.

## 4. Deliberately invalid NVA path

**Change:** I added a source-subnet UDR for `10.0.0.0/24` towards dummy next hop `10.0.2.4`.

**Investigation:** Effective Routes displayed the active user route with effective next-hop type `None` and the configured address.

![Active user route pointing towards the nonexistent NVA address](../Networking/Screenshots/43-effective-routes-broken-nva-udr.png)

*Evidence 43: the recorded effective route did not match my predicted VirtualAppliance display.*

**Fix and verification:** I removed that UDR and reran Network Watcher Next Hop.

![VirtualNetwork and System Route returned after the UDR was removed](../Networking/Screenshots/44-next-hop-restored-virtualnetwork.png)

*Evidence 44: Azure's normal route selection was restored.*

**Limit:** No application VM existed at the destination, so this proves route recovery rather than service recovery.

## 5. New workspace had no AzureActivity data

**Symptom:** The expected `AzureActivity` data was initially absent.

**Change:** I configured subscription Activity Log export to the Log Analytics workspace.

![Subscription Activity Log categories sent to Log Analytics](../Monitoring/Screenshots/53-activity-log-diagnostic-setting.png)

*Evidence 53: the collection/export configuration is visible.*

**Verification:** I reran a focused KQL query and received a successful management-plane deployment event.

![KQL result containing the ingested deployment event](../Monitoring/Screenshots/54-log-analytics-azureactivity-kql.png)

*Evidence 54: the workspace returned a matching record.*

**What I learned:** The workspace and the data-export configuration are separate. I also needed to allow for ingestion delay and use an appropriate query time range.

## 6. Command and source-file errors

I initially passed an unintended positional argument to `Format-Volume`. PowerShell rejected the command; I corrected it and verified the healthy `F:` volume.

![Format-Volume error followed by successful volume verification](../Compute/Screenshots/28-vm-managed-data-disk-troubleshooting.png)

*Evidence 28: the error and corrected result are both retained.*

During the wider exercises I also encountered quoting and parameter-switch errors, an omitted destination address prefix, and a Bicep file that was missing after the Cloud Shell environment changed. I recreated the known template from the recorded exercise and downloaded source files at the time. I have now supplied and confirmed the NSG template and both parameter files. The included network-stack template is still recovered from the recorded code blocks, while the extension script was transcribed from evidence 31.

In the final network-template check, selecting the wrong split-array element displayed `subscriptions` rather than the NSG name. That was an output-extraction mistake, not evidence of a broken association. Evidence 68 now records the corrected `Split-Path -Leaf` result as `NSG-AZ104-BICEP-WEB`.

**What I learned:** Shell parsing, Azure configuration and missing local files are different failure classes. I need to preserve source files outside an ephemeral shell and verify the resource state with a purpose-built query.
