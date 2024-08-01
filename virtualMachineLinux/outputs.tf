output "vm_name" {
  value = var.vm_name
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.example.id
}

output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}