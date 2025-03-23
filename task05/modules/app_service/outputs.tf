# modules/app_service/outputs.tf
output "id" {
  description = "The ID of the app service"
  value       = azurerm_windows_web_app.app.id
}

output "name" {
  description = "The name of the app service"
  value       = azurerm_windows_web_app.app.name
}

output "default_hostname" {
  description = "The default hostname of the app service"
  value       = azurerm_windows_web_app.app.default_hostname
}