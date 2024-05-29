data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "key_vault" {
  name                          = var.key_vault_name
  location                      = var.key_vault_location
  resource_group_name           = var.resource_group_name
  sku_name                      = var.sku
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days    = var.soft_delete_retention_days
  purge_protection_enabled      = var.purge_protection_enabled
  public_network_access_enabled = var.public_network_access_enabled
  enable_rbac_authorization     = var.rbac_enabled
}