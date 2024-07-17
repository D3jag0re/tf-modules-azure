output "container_registry_id" {
  description = "The ID of the container registry."
  value       = azurerm_container_registry.contregistry.id
}

output "registry_name" {
  description = "The name of the container registry"
  value = azurerm_container_registry.contregistry.name
}

output "registry_login_server" {
  description = "The URL that can be used to log into the container registry."
  value       = azurerm_container_registry.contregistry.login_server
}

output "container_registry_admin_username" {
  description = "The admin username of the container registry."
  value       = var.admin_enabled ? azurerm_container_registry.contregistry.admin_username : null
}

output "container_registry_admin_password" {
  description = "The admin password of the container registry."
  value       = var.admin_enabled ? azurerm_container_registry.contregistry.admin_password : null
}
