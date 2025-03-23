# variables.tf
variable "resource_groups" {
  description = "A map of resource group objects"
  type = map(object({
    name     = string
    location = string
  }))

}

variable "app_service_plans" {
  description = "A map of app service plan objects"
  type = map(object({
    name         = string
    sku          = string
    worker_count = number
    rg_key       = string
  }))

}

variable "app_services" {
  description = "A map of app service objects"
  type = map(object({
    name               = string
    asp_key            = string
    rg_key             = string
    allow_ip_rule_name = string
    allow_tm_rule_name = string
  }))
}

variable "traffic_manager" {
  description = "Traffic manager profile configuration"
  type = object({
    name           = string
    rg_key         = string
    routing_method = string
  })
}

variable "verification_ip" {
  description = "IP address of the verification agent"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to all resources"
  type        = map(string)
  default     = {}
}