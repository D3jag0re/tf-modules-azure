resource "azurerm_linux_web_app" "app_service_linux" {
  name                       = var.app_service_name
  location                   = var.app_service_location
  resource_group_name        = var.rg_name
  service_plan_id            = var.app_service_plan_id
  https_only                 = true
  client_affinity_enabled    = true
  client_certificate_enabled = false

  site_config {
    always_on           = false
    minimum_tls_version = "1.2"
    container_registry_use_managed_identity = var.container_registry_use_managed_identity
  }

  lifecycle {
    ignore_changes = [
      app_settings,
    ]
  }

  dynamic "identity" {
    for_each = var.managed_identity_enabled ? [1] : []
    content {
      type = var.managed_identity_type
    }
  }

}
