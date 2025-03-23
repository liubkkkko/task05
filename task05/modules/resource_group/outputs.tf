# modules/resource_group/outputs.tf
output "details" {
  description = "Resource group details including id, name, and location"
  value = {
    id       = azurerm_resource_group.rg.id
    name     = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
  }
}