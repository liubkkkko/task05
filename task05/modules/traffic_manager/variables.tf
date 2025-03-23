# modules/traffic_manager/variables.tf
variable "name" {

  description = "The name of the traffic manager profile"
  type        = string
}

variable "resource_group_name" {

  description = "The name of the resource group"
  type        = string
}

variable "routing_method" {

  description = "The routing method of the traffic manager profile"
  type        = string
}

variable "endpoints" {
  description = "A map of endpoint objects"
  type = map(object({
    name               = string
    target_resource_id = string
    weight             = number
    priority           = number
  }))

}

variable "tags" {

  description = "Tags to be applied to the traffic manager profile"
  type        = map(string)
  default     = {}
}