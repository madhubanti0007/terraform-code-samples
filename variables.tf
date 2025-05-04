// No variables required for this example, but this file is here for extensibility. 

variable "subscription_id" {
  description = "The Subscription ID for Azure."
  type        = string
}

variable "client_id" {
  description = "The Client ID (AppId) for Azure Service Principal."
  type        = string
}

variable "client_secret" {
  description = "The Client Secret for Azure Service Principal."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for Azure."
  type        = string
} 