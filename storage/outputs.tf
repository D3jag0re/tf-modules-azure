output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

# ID gives URL, resource_manager_id gives resource ID
output "storage_account_id" {
  value = azurerm_storage_account.storage_account.id
}

