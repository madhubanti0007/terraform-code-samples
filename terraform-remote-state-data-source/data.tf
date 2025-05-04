data "terraform_remote_state" "tfstateremote" {
  backend = "azurerm"
  config = {
    storage_account_name = "tfstatec9rlg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
    use_azuread_auth     = true

  }
}

output "remote_state_resource_group_name" {
  value = data.terraform_remote_state.tfstateremote.outputs.resource_group_name
}