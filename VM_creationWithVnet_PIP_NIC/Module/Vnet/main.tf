resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       =  var.vnet.address_space
  location            =  var.vnet.location
  resource_group_name =  var.vnet.name
}