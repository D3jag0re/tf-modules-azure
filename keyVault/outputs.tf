output "key_vault_name" {
  value = var.key_vault_name
}

output "key_vault_id" {
  value = azurerm_key_vault.key_vault.id
}

