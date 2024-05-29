output "service_plan_name" {
  value = var.service_plan_name
}

output "service_plan_id" {
  value = azurerm_service_plan.app_service_plan.id
}

output "service_plan_rg_name" {
  value = var.rg_name
}