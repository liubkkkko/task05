# modules/traffic_manager/variables.tf
variable "name" {
  type        = string
  description = "The name of the traffic manager profile"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "routing_method" {
  type        = string
  description = "The routing method of the traffic manager profile"
}

variable "endpoints" {
  type = map(object({
    name               = string
    target_resource_id = string
    weight             = number
    priority           = number
  }))
  description = "A map of endpoint objects"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the traffic manager profile"
  default     = {}
}