module "resource_groups" {
  source   = "./modules/resource_groups"



  for_each = var.resource_groups
#this we dont need to give tomap because it is already map & RG is object WHICH 
  rg = {
    name     = each.value.name
    location = each.value.location
  }
}


module "storage_accounts" {
  depends_on = [module.resource_groups]
  source     = "./modules/storage_accounts"
  for_each   = var.storage_accounts

  storage_accounts = {
    name                = each.value.name
    replication_type    = each.value.replication_type
    resource_group_name = module.resource_groups[each.value.rg].rg_required_info.name
    location            = module.resource_groups[each.value.rg].rg_required_info.location
  }
}


