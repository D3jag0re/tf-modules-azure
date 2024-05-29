output "app_service_name" {
  value = var.app_service_name
}

output "app_service_id" {
  value = azurerm_app_service.app_service_web.id
}

output "app_service_managed_identity_principal_id" {
  value       = try(azurerm_app_service.app_service_web.identity[0].principal_id, null)
  description = "The principal ID of the system-assigned managed identity for the App Service. Null if no system-assigned identity is used."
}

output "app_service_details" {
  value = {
    service_principal_name = azurerm_app_service.app_service_web.name
    service_principal_id   = try(azurerm_app_service.app_service_web.identity[0].principal_id, null)
    tags                   = azurerm_app_service.app_service_web.tags
  }
}

