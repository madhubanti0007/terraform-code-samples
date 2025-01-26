# main.tftest.hcl

# Test resource group
run "verify_resource_group" {
  command = plan

  assert {
    condition     = azurerm_resource_group.example.name == "exampleresourcegroup"
    error_message = "Resource group name does not match expected value"
  }
 
  assert {
    condition     = azurerm_resource_group.example.location == "westeurope"
    error_message = "Resource group location does not match expected value"
  }
}

run "verify_storage_account" {

  command = apply

  assert {
    condition     = lower(azurerm_storage_account.examplestorage.name) == azurerm_storage_account.examplestorage.name
    error_message = "Storage account name did not match expected"
  }

    assert {
    condition     = azurerm_storage_account.examplestorage.account_replication_type != "RAGRS"
    error_message = "Storage account redundancy should not be Read-Access geo redundant"
  }

  assert {
    condition     = azurerm_storage_account.examplestorage.access_tier == "Hot"
    error_message = "Default access tier should be Hot"
  }

}

run "verify_storage_account_container" {
   // Define any variables required for your test
  variables {
     storage_account_container_name = var.storage_account_container_name
 }

  command = apply

  assert {
    condition     = azurerm_storage_container.data.name == var.storage_account_container_name
    error_message = "Storage account container name should be test."
  }
   
  assert {
    condition     = azurerm_storage_container.data.container_access_type == "blob"
    error_message = "Storage account container name should be test."
  }

  assert {
    condition     = azurerm_storage_container.data.storage_account_name == azurerm_storage_account.examplestorage.name
    error_message = "Storage account container test should reside within storageaccountfortest."
  }
}

run "verify_uploaded_files" {
   // Define any variables required for your test
  variables {
     uploaded_file = var.uploaded_file
 }

  command = apply

  assert {
    condition     = azurerm_storage_blob.examplefilestorageblob.name == var.uploaded_file
    error_message = "Uploaded file name should be testfile1.txt."
  }
   
  assert {
    condition     = azurerm_storage_blob.examplefilestorageblob.storage_container_name == azurerm_storage_container.data.name
    error_message = "Storage account container name should be test."
  }
 }
