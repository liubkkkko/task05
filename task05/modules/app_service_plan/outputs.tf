# modules/app_service_plan/outputs.tf
output "details" {
  description = "App service plan details including id and name"
  value = {
    id   = azurerm_service_plan.asp.id
    name = azurerm_service_plan.asp.name
  }
}