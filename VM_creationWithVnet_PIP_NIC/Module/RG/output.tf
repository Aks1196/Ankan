output "rg" {
  value = {
    name     = azurerm_resource_group.Hurbal.name
    location = azurerm_resource_group.Hurbal.location
  }
}