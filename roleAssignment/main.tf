data "azurerm_resource_group" "rg_name" {
  name = var.resource_group_name
}

resource "azurerm_role_assignment" "rg_role_assignment" {
  scope                = data.azurerm_resource_group.rg_name.id
  role_definition_name = var.role_definition_name
  principal_id         = var.object_id
}