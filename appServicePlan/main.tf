resource "azurerm_service_plan" "app_service_plan" {
  name                = var.service_plan_name
  location            = var.service_plan_location
  resource_group_name = var.rg_name
  os_type             = var.os_type
  sku_name            = var.sku
}