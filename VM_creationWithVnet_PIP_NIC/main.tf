

module "rg" {
  source = "./Module/RG"

  for_each = var.rg_names
  rg       = each.value
}

module "vnet" {
  source = "./Module/Vnet" 
  depends_on = [module.rg]
  for_each = var.vnets
  prefix = var.prefix

  #variable vnet depended on module "vnet"
  vnet = {
    address_space       = each.value.address_space
    name                = "${var.prefix}-vnet"
    location            = module.rg[each.key].rg.location
    resource_group_name = module.rg[each.key].rg.name
  }
}














