output "resource_group_id" {
    description = "id of a resource group"
    value = data.azurerm_resource_group.example.id
}