data "azurerm_resource_group" "example" {
  name     = "External_to_Terraform_RG"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountmadhu10956"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}