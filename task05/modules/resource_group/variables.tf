# modules/resource_group/variables.tf
variable "name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location where the resource group should be created"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resource group"
  default     = {}
}