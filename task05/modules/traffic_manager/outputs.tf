# modules/traffic_manager/outputs.tf
output "id" {
  description = "The ID of the traffic manager profile"
  value       = azurerm_traffic_manager_profile.tm.id
}

output "fqdn" {
  description = "The FQDN of the traffic manager profile"
  value       = azurerm_traffic_manager_profile.tm.fqdn
}