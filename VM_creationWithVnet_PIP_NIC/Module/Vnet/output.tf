output "Angurawala_Vnet" {
  value = {
    name     = azurerm_virtual_network.main.name
    location = azurerm_virtual_network.main.location
  }
}