# Publication and security review

[Project overview](README.md) · [Evidence index](EVIDENCE_INDEX.md)

## Scope

This review covers the current text and code files, the screenshots selected for the walkthrough and a full-size visual inspection of the supplied publication images. It does not cover Git history, every previously published revision, forensic recovery from altered image pixels, the current Azure subscription or files outside this repository. No Azure command was run.

## Publication boundary

The portfolio intentionally retains technical lab context: AZ-104 resource names, storage account and resource-group names, VNets, subnets, NSGs, role names, lab usernames or display names, private RFC1918 address ranges and configuration details. The owner has also approved the visible `Phil H` display name and `/home/phil` Cloud Shell path.

The selected screenshots do not publish a generated SAS value, bearer-token value, storage account key, recovery credential, personal email address, full subscription, tenant or object identifier, or a client or VM public IP address. Where those values were present in the historical captures, the supplied publication copies remove, crop or obscure them. No obscured value is used as evidence for a technical claim.

## Screenshot and naming review

The newly supplied copies replaced the previously flagged current-tree images 07–10, 18, 19, 26 and 27. Their useful role, permission, network-rule and VM details are now included in the walkthrough. Evidence 05 was removed from the current publication tree because it proved only a generic deployment and added less value than evidence 15.

Files supplied under generic date, cost-management, lock or resource-group names were compared with their visible contents. They were duplicates of stronger numbered evidence and were not added again. The malformed source name for evidence 68 was normalised from `.pn.png` to `68-bicep-vnet-subnet-nsg-verified.png`; no screenshot number changed.

Some publication copies obscure non-secret account or Azure identifier fields rather than displaying them. This review confirmed that those values were not readable in the supplied rendered images at full size. Secrets such as tokens, keys, signed URLs and recovery credentials are not present in the selected set.

## Text and source-code boundaries

The Bicep, parameter, PowerShell and KQL files contain no intended credentials. The owner supplied `az104-nsg.bicep` and both parameter files, and their executable content matched the recovered copies. `az104-network-stack.bicep` remains labelled as recovered from the recorded lab code; the PowerShell script remains labelled as transcribed from evidence 31.

The visible `$token` in evidence 30 is a variable reference, not a token value. No recovery executable, RDP file, environment file, private key or signed URL was added.

## Claims deliberately excluded

The documentation does not claim:

- successful Blob transfer through Private Link from DNS evidence alone;
- public Storage endpoint disablement from private-endpoint creation;
- successful VM or file restoration from recovery points or workflow inspection;
- exclusive subnet isolation from one allow rule while default NSG rules remain;
- alert firing or email delivery from an alert review screen;
- application reachability from NSG, route or peering state alone;
- that evidence 15 independently proves the exemption assignment;
- zero spend or complete cleanup without a current inventory and billing review.

## Before publication

1. Review Git history for earlier unredacted screenshot revisions. Replacing a current file does not remove the earlier blob from history.
2. Rotate or revoke any credential if that history review finds that one was previously exposed.
3. Inspect the final staged diff, including the staged-versus-working-tree state of `Compute/readme.md`, before committing.
4. Run a current secret scan appropriate to the publication platform. A text scan cannot inspect image pixels.
5. Review the rendered Markdown once more after any later screenshot replacement.
6. Compare the recovered `az104-network-stack.bicep` and transcribed PowerShell extension script with confirmed originals if they become available.

This remains a personal learning project, not employer work product or a formal security assurance assessment.
