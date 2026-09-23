param location string = 'uksouth'
param nsgName string
param destinationPort string = '443'

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
          destinationPortRange: destinationPort
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

output deployedNsgName string = nsg.name
