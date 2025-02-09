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
      # Uncomment below 2 properties when you want to access Azure Storage using Azure AD credential/RBAC 
      # and want to use OpenIDConnect protocol to authenticate
      # use_oidc           = true
      #use_azuread_auth    = true
  }

}

