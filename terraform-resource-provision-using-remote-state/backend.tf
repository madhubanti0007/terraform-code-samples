terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  
}
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstatelfcpe"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}

