# https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/~/Credentials/appId/875a99e3-f3f2-4db4-8c51-f6ff26ee5b32/isMSAApp~/false



az deployment group create --resource-group Joke-dev --template-file .\build\env\main.bicep

$key = az staticwebapp secrets list --name JokeUi396-dev --query "properties.apiKey" -o tsv

az staticwebapp show --name JokeUi396-dev --query "repositoryUrl"