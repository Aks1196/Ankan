resource "azurerm_storage_account" "storage" {
  name                     = var.storage_accounts.name
  resource_group_name      = var.storage_accounts.resource_group_name
  location                 = var.storage_accounts.location
  account_tier             = "Standard"
  account_replication_type = var.storage_accounts.replication_type
}
