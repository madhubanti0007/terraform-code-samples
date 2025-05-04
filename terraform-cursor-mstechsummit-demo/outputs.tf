output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "resource_group_location" {
  value = azurerm_resource_group.example.location
}

output "storage_account_name" {
  value = azurerm_storage_account.example.name
}

output "storage_account_primary_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}

output "storage_container_name" {
  value = azurerm_storage_container.example.name
} 