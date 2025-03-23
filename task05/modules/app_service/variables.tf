# modules/app_service/variables.tf
variable "name" {
  type        = string
  description = "The name of the app service"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location where the app service should be created"
}

variable "app_service_plan_id" {
  type        = string
  description = "The ID of the app service plan"
}

variable "allow_ip_address" {
  type        = string
  description = "IP address to allow in access restrictions"
}

variable "allow_ip_rule_name" {
  type        = string
  description = "Name of the IP restriction rule for the specified IP"
}

variable "allow_tm_rule_name" {
  type        = string
  description = "Name of the service tag restriction rule for Traffic Manager"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the app service"
  default     = {}
}