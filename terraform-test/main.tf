terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
 subscription_id = "Provide the subscription id"
 tenant_id = "Provide the tenant id"
 client_id = "provide the client id"
 client_secret = "provide the client secret"
 features {

 } 
}

resource "random_string" "random" {
  length           = 16
  special          = false
}

resource "azurerm_resource_group" "example" {
  name     = "exampleresourcegroup"
  location = "West Europe"
}

resource "azurerm_storage_account" "examplestorage" {
  name                     = lower(random_string.random.id)
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier = "Hot"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "data" {
  name                  = "test"
  storage_account_name  = azurerm_storage_account.examplestorage.name
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "examplefilestorageblob" {
  name                   = "testfile1.txt"
  storage_account_name   = azurerm_storage_account.examplestorage.name
  storage_container_name = azurerm_storage_container.data.name
  type                   = "Block"
  source                 = "./fileToUpload/testfile1.txt"
}