resource "azurerm_subnet" "bal" {
  name                 = var.subnet.name
  resource_group_name  = var.subnet.resource_group_name 
  virtual_network_name = var.subnet.virtual_network_name
  address_prefixes     = var.subnet.address_prefixes
  private_endpoint_network_policies = "Disabled"
  private_link_service_network_policies_enabled = true
}

