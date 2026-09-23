// Transcript-recovered lab source; compare with the original downloaded file.
// This was a separate temporary deployment, not the full existing lab.
param location string = 'uksouth'
param vnetName string
param nsgName string
param subnetName string = 'SNET-WEB'

resource nsg 'Microsoft.Network/networkSecurityGroups@2024-05-01' = {
  name: nsgName
  location: location

  properties: {
    securityRules: [
      {
        name: 'Allow-HTTPS-From-VNet'
        properties: {
          priority: 200
          direction: 'Inbound'
          access: 'Allow'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

resource vnet 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: vnetName
  location: location

  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.2.0.0/16'
      ]
    }

    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: '10.2.1.0/24'
          networkSecurityGroup: {
            id: nsg.id
          }
        }
      }
    ]
  }
}

output deployedVnet string = vnet.name
output deployedNsg string = nsg.name
