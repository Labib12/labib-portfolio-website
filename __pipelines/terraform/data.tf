data "azurerm_key_vault" "keyvault" {
    name = "labib-keyvault"
    resource_group_name = azurerm_resource_group.rg.name
}

data "azurerm_key_vault_secret" "github_token" {
    key_vault_id = data.azurerm_key_vault.keyvault.id
    name = "github-token"
}