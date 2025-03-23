# modules/app_service/outputs.tf
output "app_service_details" {
  description = "App service details including id, name, and hostname"
  value = {
    id               = azurerm_windows_web_app.app.id
    name             = azurerm_windows_web_app.app.name
    default_hostname = azurerm_windows_web_app.app.default_hostname
  }
}