# PowerShell command notes

[Automation overview](../readme.md)

These commands document the recorded exercises. They are not instructions to restart the lab. The only standalone script here, [extension-test.ps1](extension-test.ps1), was transcribed from the script visible in evidence 31 and writes a local test directory and file when run.

## Resource inventory — read operation

~~~powershell
Get-AzResource -ResourceGroupName "RG-AZ104-Network" |
    Select-Object Name, ResourceType, Location
~~~

## Tag merge — Azure write operation used in the lab

~~~powershell
$vnet = Get-AzVirtualNetwork `
    -Name "VNET-AZ104-PROD" `
    -ResourceGroupName "RG-AZ104-Network"

Update-AzTag `
    -ResourceId $vnet.Id `
    -Tag @{ManagedBy="PowerShell"} `
    -Operation Merge
~~~

The recorded output retained `Project = AZ104` alongside `ManagedBy = PowerShell`.

## Parameterised NSG verification — read operation

~~~powershell
(Get-AzNetworkSecurityGroup `
    -Name "NSG-AZ104-BICEP-PARAM" `
    -ResourceGroupName "RG-AZ104-Network").SecurityRules |
    Select-Object Name, Direction, Access, DestinationPortRange
~~~

## Multi-resource deployment verification — read operation

~~~powershell
$vnet = Get-AzVirtualNetwork `
    -Name "VNET-AZ104-BICEP-LAB" `
    -ResourceGroupName "RG-AZ104-Network"

$vnet.Subnets.NetworkSecurityGroup.Id |
    Split-Path -Leaf
~~~

Evidence 68 now records the clean `NSG-AZ104-BICEP-WEB` result. None of these commands was rerun against Azure for this documentation update.
