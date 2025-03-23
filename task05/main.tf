# main.tf
# Create Resource Groups
module "resource_groups" {
  for_each = var.resource_groups

  source   = "./modules/resource_group"
  name     = each.value.name
  location = each.value.location
  tags     = var.tags
}

# Create App Service Plans
module "app_service_plans" {
  for_each = var.app_service_plans

  source              = "./modules/app_service_plan"
  name                = each.value.name
  resource_group_name = module.resource_groups[each.value.rg_key].details.name
  location            = module.resource_groups[each.value.rg_key].details.location
  sku                 = each.value.sku
  worker_count        = each.value.worker_count
  tags                = var.tags
}

# Create App Services
module "app_services" {
  for_each = var.app_services

  source              = "./modules/app_service"
  name                = each.value.name
  resource_group_name = module.resource_groups[each.value.rg_key].details.name
  location            = module.resource_groups[each.value.rg_key].details.location
  app_service_plan_id = module.app_service_plans[each.value.asp_key].details.id
  allow_ip_address    = var.verification_ip
  allow_ip_rule_name  = each.value.allow_ip_rule_name
  allow_tm_rule_name  = each.value.allow_tm_rule_name
  tags                = var.tags
}

# Create Traffic Manager
module "traffic_manager" {
  source              = "./modules/traffic_manager"
  name                = var.traffic_manager.name
  resource_group_name = module.resource_groups[var.traffic_manager.rg_key].details.name
  routing_method      = var.traffic_manager.routing_method

  endpoints = {
    endpoint1 = {
      name               = module.app_services["app1"].details.name
      target_resource_id = module.app_services["app1"].details.id
      weight             = 100
      priority           = 1
    },
    endpoint2 = {
      name               = module.app_services["app2"].details.name
      target_resource_id = module.app_services["app2"].details.id
      weight             = 100
      priority           = 2
    }
  }

  tags = var.tags
}