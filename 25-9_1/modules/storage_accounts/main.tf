resource "azurerm_storage_account" "storage" {
  name                     = var.storage_accounts1.name
  resource_group_name      = var.storage_accounts1.resource_group_name
  location                 = var.storage_accounts1.location
  account_tier             = "Standard"
  account_replication_type = var.storage_accounts1.replication_type
}
