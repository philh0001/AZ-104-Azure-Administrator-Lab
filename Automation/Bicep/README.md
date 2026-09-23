# Bicep source provenance

[Automation overview](../readme.md)

The owner supplied three historical source files from the lab: `az104-nsg.bicep`, `az104-nsg.bicepparam` and `az104-network-stack.bicepparam`. I compared them with the transcript-recovered copies. Their executable content and parameter values matched; the recovered copies differed only by provenance comments and terminal-newline normalisation. The repository now uses the owner-supplied content for those three files.

The original `az104-network-stack.bicep` was not supplied. That template remains a recovered copy of the explicit code recorded during the lab and keeps its provenance comment. None of these files was fetched from Azure or deployed again for this documentation update.

| File | Provenance and historical version |
|---|---|
| [az104-nsg.bicep](az104-nsg.bicep) | Owner-supplied original: later parameterised NSG with required `nsgName`, UK South default and destination-port parameter |
| [az104-nsg.bicepparam](az104-nsg.bicepparam) | Owner-supplied original: `NSG-AZ104-BICEP-PARAM`, UK South and port 443 |
| [az104-network-stack.bicep](az104-network-stack.bicep) | Transcript-recovered copy: temporary VNet, inline subnet and NSG using `nsg.id`; original not yet supplied |
| [az104-network-stack.bicepparam](az104-network-stack.bicepparam) | Owner-supplied original: values for `VNET-AZ104-BICEP-LAB`, `NSG-AZ104-BICEP-WEB` and `SNET-WEB` |

The earlier single-NSG exercise started at port 443 and changed to 8443 before the later parameterised version. The current `az104-nsg.bicep` therefore must not be presented as the exact hard-coded source from every stage.

## Recorded command pattern

The parameterised exercise used a what-if command of this form:

~~~powershell
az deployment group what-if `
    --resource-group "RG-AZ104-Network" `
    --parameters az104-nsg.bicepparam
~~~

The actual lab also used `az deployment group create` and later PowerShell queries. These commands are historical notes, not a workflow to rerun.

## Publication limitation

Only `az104-network-stack.bicep` still needs comparison with a confirmed original. The relative `using` paths have been retained and are checked locally during documentation validation; no Azure deployment is needed for that check.
