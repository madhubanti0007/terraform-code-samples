variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "example-cursor-rg"
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags to apply to the Resource Group"
  type        = map(string)
  default = {
    Environment = "Demo"
    Project     = "CursorAI-MSTechSummit"
    ManagedBy   = "Terraform"
  }
} 