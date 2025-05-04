provider "azurerm" {
  features {}
  subscription_id = "<Put subscription_id>"
  client_id       = "<Put client_id>"
  tenant_id       = "<Put tenant_id>"
}

resource "azurerm_resource_group" "main" {
  name     = "terraform-mstechsummit-rg"
  location = "East US"
} 