output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

# ID gives URL, resource_manager_id gives resource ID
output "storage_account_id" {
  value = azurerm_storage_account.storage_account.id
}

# Output the container names as a list
output "container_names" {
  value = azurerm_storage_container.storage_container.*.name
}

# Output specific container names by index
output "container_name_0" {
  value = length(azurerm_storage_container.storage_container) > 0 ? azurerm_storage_container.storage_container[0].name : ""
}

output "container_name_1" {
  value = length(azurerm_storage_container.storage_container) > 1 ? azurerm_storage_container.storage_container[1].name : ""
}

