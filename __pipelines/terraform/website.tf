resource "azurerm_static_web_app" "website" {
  name                = "portfolio-website"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  repository_url = "https://github.com/Labib12/labib-portfolio-website"
  repository_branch = "master"
  repository_token = data.azurerm_key_vault_secret.github_token.value
}