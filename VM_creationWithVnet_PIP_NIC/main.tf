

module "rg" {
  source = "./Module/RG"

  for_each = var.rg_names
  prefix = var.prefix
  Angurwala_rg      = each.value
}

module "vnet" {
  source = "./Module/Vnet" 
  depends_on = [module.rg]
  for_each = var.vnets
  prefix = var.prefix

  #variable vnet depended on module "vnet"
  Angurawala_Vnet = {
    address_space       = each.value.address_space
    name                = "${var.prefix}-vnet"
    location            = module.rg[each.key].Angurwala_rg.location
    resource_group_name = module.rg[each.key].Angurwala_rg.name
  }
}

module "subnet" {
  source = "./Module/Subnet"
  depends_on = [module.vnet,module.rg]
  for_each = var.subnets
  prefix = var.prefix

  #variable subnet depended on module "vnet"
  subnet = {
    name                 = "${var.prefix}-subnet"
    resource_group_name  = module.rg[each.key].Angurwala_rg.name
    virtual_network_name = module.vnet[each.key].Angurawala_Vnet.name
    address_prefixes     = each.value.address_prefixes
    private_endpoint_network_policies = "Disabled"
    private_link_service_network_policies_enabled = true
  }
}











