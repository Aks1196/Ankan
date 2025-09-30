
module "resource_groups" {
source ="./modules/resource_groups"
for_each = tomap(var.rg_names) 
rg =each.value
}


module "ChorAKS" {
  source = "./modules/aks"
  depends_on = [module.resource_groups]  # optional, ensures RGs exist first
  #we are using for_each here to create multiple aks clusters if needed but var represents a map of objects
  #choraks is the key here in variable file 
  for_each = var.ChorAKS

   ChorAKS = {
    name                = each.value.name

  # to call the output block of resource group module we have to use module.module_name[each.key].output_block_name
    location            = module.resource_groups[each.key].rg_required_info.location
    resource_group_name = module.resource_groups[each.key].rg_required_info.name
    dns_prefix          = each.value.dns_prefix
  }

  node_pool_config = var.node_pool_config
  identity_type    = var.identity_type

  
}






