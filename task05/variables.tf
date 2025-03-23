# variables.tf
variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
  description = "A map of resource group objects"
}

variable "app_service_plans" {
  type = map(object({
    name         = string
    sku          = string
    worker_count = number
    rg_key       = string
  }))
  description = "A map of app service plan objects"
}

variable "app_services" {
  type = map(object({
    name               = string
    asp_key            = string
    rg_key             = string
    allow_ip_rule_name = string
    allow_tm_rule_name = string
  }))
  description = "A map of app service objects"
}

variable "traffic_manager" {
  type = object({
    name           = string
    rg_key         = string
    routing_method = string
  })
  description = "Traffic manager profile configuration"
}

variable "verification_ip" {
  type        = string
  description = "IP address of the verification agent"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to all resources"
  default     = {}
}