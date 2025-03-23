# modules/app_service_plan/variables.tf
variable "name" {
  type        = string
  description = "The name of the app service plan"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location where the app service plan should be created"
}

variable "sku" {
  type        = string
  description = "The SKU for the app service plan"
}

variable "worker_count" {
  type        = number
  description = "The number of workers (instances) for the app service plan"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the app service plan"
  default     = {}
}