provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "example" {
  name     = "example-cursor-rg"
  location = "East US"
}

resource "random_string" "storage_suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestor${random_string.storage_suffix.result}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "testcontainer"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "null_resource" "upload_test_file" {
  provisioner "local-exec" {
    command = "az storage blob upload --account-name ${azurerm_storage_account.example.name} --container-name ${azurerm_storage_container.example.name} --name testUpload.txt --file ../testUpload.txt --auth-mode key --account-key ${azurerm_storage_account.example.primary_access_key}"
    interpreter = ["bash", "-c"]
  }
  depends_on = [azurerm_storage_container.example]
} 
