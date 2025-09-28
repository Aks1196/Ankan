resource "azurerm_virtual_network" "main" {
  name                =  var.Angurawala_Vnet.name
  address_space       =  var.Angurawala_Vnet.address_space
  location            =  var.Angurawala_Vnet.location
  resource_group_name =  var.Angurawala_Vnet.resource_group_name
}