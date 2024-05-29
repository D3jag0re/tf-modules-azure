output "rg_name" {
  value = var.rg_name
}

output "rg_id" {
  value = azurerm_resource_group.resource_group.id
}
