# Azure Resource Group with Terraform

This configuration creates an Azure Resource Group named `example-cursor-rg` in the `East US` region using Terraform.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- An Azure subscription
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and logged in (`az login`)

## Usage

1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Plan the deployment:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```
   Confirm with `yes` when prompted.

## Outputs
- `resource_group_name`: The name of the created resource group
- `resource_group_location`: The location of the created resource group 
