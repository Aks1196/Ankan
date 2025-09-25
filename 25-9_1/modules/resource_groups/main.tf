resource "azurerm_resource_group" "rg" {     
  name     = var.rg.name
  location = var.rg.location
}

output "rg_required_info" {
  value = {
    name     = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
  }
}