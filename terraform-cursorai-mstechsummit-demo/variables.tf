variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-cursor-rg"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}