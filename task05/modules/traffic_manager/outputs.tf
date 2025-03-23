# modules/traffic_manager/outputs.tf
output "traffic_manager_details" {
  description = "Traffic manager details including id and fqdn"
  value = {
    id   = azurerm_traffic_manager_profile.tm.id
    fqdn = azurerm_traffic_manager_profile.tm.fqdn
  }
}