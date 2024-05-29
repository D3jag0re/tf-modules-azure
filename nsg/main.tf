resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  count     = var.subnet_association == true ? 1 : 0
  subnet_id = var.subnet_id

  network_security_group_id = azurerm_network_security_group.nsg.id
}