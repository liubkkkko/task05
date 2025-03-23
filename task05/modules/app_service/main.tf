# modules/app_service/main.tf
resource "azurerm_windows_web_app" "app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.app_service_plan_id
  
  site_config {
    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v6.0"
    }
    
    dynamic "ip_restriction" {
      for_each = [var.allow_ip_address]
      content {
        name        = var.allow_ip_rule_name
        ip_address  = "${ip_restriction.value}/32"
        action      = "Allow"
        priority    = 100
      }
    }
    
    dynamic "ip_restriction" {
      for_each = ["AzureTrafficManager"]
      content {
        name             = var.allow_tm_rule_name
        service_tag      = ip_restriction.value
        action           = "Allow"
        priority         = 200
      }
    }
    
    ip_restriction_default_action = "Deny"
  }
  
  tags = var.tags
}