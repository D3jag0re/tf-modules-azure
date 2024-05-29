# Create Storage Account

resource "azurerm_storage_account" "storage_account" {
  name                = var.storage_acc_name
  resource_group_name = var.storage_acc_rg_name

  location                 = var.storage_acc_location
  account_tier             = var.storage_acc_tier
  account_replication_type = var.storage_acc_replication_type
  is_hns_enabled           = var.is_hns_enabled
  sftp_enabled             = var.sftp_enabled
  /*
  network_rules {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [azurerm_subnet.example.id]
  }
  */
}

# Create Storage Container
resource "azurerm_storage_container" "storage_container" {
  count = var.create_container ? length(var.storage_container_names) : 0

  name                  = var.create_container ? var.storage_container_names[count.index] : null
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.storage_container_access_type
}