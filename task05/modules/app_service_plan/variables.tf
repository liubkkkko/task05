# modules/app_service_plan/variables.tf
variable "name" {
  description = "The name of the app service plan"
  type        = string

}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string

}

variable "location" {

  description = "The location where the app service plan should be created"
  type        = string
}

variable "sku" {

  description = "The SKU for the app service plan"
  type        = string
}

variable "worker_count" {

  description = "The number of workers (instances) for the app service plan"
  type        = number
}

variable "tags" {

  description = "Tags to be applied to the app service plan"
  type        = map(string)
  default     = {}
}