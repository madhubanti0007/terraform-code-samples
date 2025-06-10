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
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Demo"
    Project     = "CursorAI-MSTechSummit"
    CreatedBy   = "Terraform"
  }
}