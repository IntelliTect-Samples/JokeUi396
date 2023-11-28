param location string = resourceGroup().location
param JokeUi396_sitename string = 'JokeUi396-dev'

resource JokeUi396_site_resource 'Microsoft.Web/staticSites@2022-09-01' = {
  name: JokeUi396_sitename
  location: location
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
    repositoryUrl: 'https://github.com/IntelliTect-Samples/JokeUi396'
    branch: 'main'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'GitHub'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}

// resource staticSites_JokeUi396_name_intellitectsamples_com 'Microsoft.Web/staticSites/customDomains@2022-09-01' = {
//   parent:_JokeUi396_site_resource
//   name: 'intellitectsamples.com'
//   location: 'West US 2'
//   properties: {}
// }
