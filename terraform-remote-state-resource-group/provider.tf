provider "azurerm" {
  subscription_id = "Provide the subscription id"
  tenant_id       = "provide the tenant id"
  client_id       = "Provide the client id belonging to Terraform app"
  client_secret   = "Provide the client secret belonging to Terraform app"
  features { }
}