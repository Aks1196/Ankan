
module "azurerm_resource_group" {
  source = "./Module/resource_group"

  resource_group_name = "amr-ankan1"
  location            = "central India"
}

module "azurerm_storage_account" {
  source     = "./Module/storage"
  depends_on = [module.azurerm_resource_group]

  for_each              = var.storage_accounts
  storage_name          = each.key
  resource_group_name   = module.azurerm_resource_group.name
  location              = each.value.location
  account_tier          = each.value.account_tier
  account_replication_type = each.value.replication_type
}