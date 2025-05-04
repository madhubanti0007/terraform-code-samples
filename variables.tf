// This file is intentionally left blank for now. Add variables here as needed for future resources. 

variable "subscription_id" {
  description = "The Subscription ID for the Azure account."
  type        = string
}

variable "client_id" {
  description = "The Client ID (App ID) for the Azure service principal."
  type        = string
}

variable "client_secret" {
  description = "The Client Secret for the Azure service principal."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for the Azure account."
  type        = string
} 