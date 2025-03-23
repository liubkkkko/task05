# modules/resource_group/variables.tf
variable "name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {

  description = "The location where the resource group should be created"
  type        = string
}

variable "tags" {

  description = "Tags to be applied to the resource group"
  type        = map(string)
  default     = {}
}