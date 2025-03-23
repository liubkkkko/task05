# modules/app_service_plan/outputs.tf
output "id" {
  description = "The ID of the app service plan"
  value       = azurerm_service_plan.asp.id
}

output "name" {
  description = "The name of the app service plan"
  value       = azurerm_service_plan.asp.name
}