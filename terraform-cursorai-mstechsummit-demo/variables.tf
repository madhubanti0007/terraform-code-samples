variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "example-cursor-rg"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default = {
    Environment = "Demo"
    Project     = "Cursor-AI-MSTechSummit"
    CreatedBy   = "Terraform"
  }
}