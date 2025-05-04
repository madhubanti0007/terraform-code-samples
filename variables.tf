// This file is reserved for input variables for future extensibility. 

variable "subscription_id" {
  description = "The Subscription ID for the Azure account."
  type        = string
}

variable "client_id" {
  description = "The Client ID (App ID) for the Azure Service Principal."
  type        = string
}

variable "client_secret" {
  description = "The Client Secret for the Azure Service Principal."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for the Azure account."
  type        = string
}