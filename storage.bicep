param location string = 'West Europe'

resource storageacc 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'teststorageacc'
  location: location
  tags: {
    tagName: 'cstreang'
  }
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'BlobStorage'
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: false
    minimumTlsVersion: 'TLS1_2'
    publicNetworkAccess: 'Disabled'
    supportsHttpsTrafficOnly: true
  }
}
