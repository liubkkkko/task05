# modules/app_service/variables.tf
variable "name" {
  description = "The name of the app service"
  type        = string

}

variable "resource_group_name" {

  description = "The name of the resource group"
  type        = string
}

variable "location" {

  description = "The location where the app service should be created"
  type        = string
}

variable "app_service_plan_id" {

  description = "The ID of the app service plan"
  type        = string
}

variable "allow_ip_address" {

  description = "IP address to allow in access restrictions"
  type        = string
}

variable "allow_ip_rule_name" {
  description = "Name of the IP restriction rule for the specified IP"
  type        = string
}

variable "allow_tm_rule_name" {

  description = "Name of the service tag restriction rule for Traffic Manager"
  type        = string
}

variable "tags" {

  description = "Tags to be applied to the app service"
  type        = map(string)
  default     = {}
}