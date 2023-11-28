param location string = resourceGroup().location
param JokeSiteName string = 'JokeUi396-dev'

resource JokeUi396_site_resource 'Microsoft.Web/staticSites@2022-09-01' = {
  name: JokeSiteName
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
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

// resource Joke_APIM_resource 'Microsoft.Web/staticSites/linkedBackends@2022-09-01' = {
//   name: 'jokeapim'
//   kind: 'API Management'
//   parent: JokeUi396_site_resource
//   properties: {
//     backendResourceId: subscriptionResourceId('Microsoft.ApiManagement/service', 'jokeapim')
//     region: location
//   }
// }

//     '/subscriptions/a5045d8f-5a9a-4d29-aaee-1f829d64bee0/resourceGroups/jokefunction396/providers/Microsoft.ApiManagement/service/jokeapim'

// resource staticSites_JokeUi396_name_intellitectsamples_com 'Microsoft.Web/staticSites/customDomains@2022-09-01' = {
//   parent:_JokeUi396_site_resource
//   name: 'intellitectsamples.com'
//   location: 'West US 2'
//   properties: {}
// }
