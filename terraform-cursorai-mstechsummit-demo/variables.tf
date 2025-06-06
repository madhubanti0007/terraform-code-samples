variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "example-cursor-rg"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
} 
