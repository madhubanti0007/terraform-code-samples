terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "xxxxxx-xxxxx-xxxxx-xxxxx-xxxxxxxxx"
  tenant_id       = "xxxxxx-xxxxx-xxxxx-xxxxx-xxxxxxxxx"
  client_id       = "xxxxxx-xxxxx-xxxxx-xxxxx-xxxxxxxxx"
  client_secret   = "xxxxxx-xxxxx-xxxxx-xxxxx-xxxxxxxxx"
  features {

  }
}