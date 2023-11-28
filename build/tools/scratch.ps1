az deployment group create --resource-group Joke-dev --template-file .\build\env\main.bicep

$key = az staticwebapp secrets list --name JokeUi396-dev --query "properties.apiKey" -o tsv

az staticwebapp show --name JokeUi396-dev --query "repositoryUrl"