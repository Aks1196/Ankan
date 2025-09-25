
module "resource_group" {
  source   = "./Module/resource_group"
  for_each = var.rgs
  rg       = each.value
}

module "storage_account" {
  for_each = var.storages
  source   = "./Module/storage"

  name                = each.value.name
  resource_group_name = each.value.rg
  location            = each.value.location
  replication_type    = "LRS"
}

