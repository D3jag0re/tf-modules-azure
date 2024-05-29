output "subnet_name" {
  value = var.subnet_name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

