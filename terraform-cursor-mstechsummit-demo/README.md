# Azure Resource Group Terraform Example

This configuration creates an Azure Resource Group named `example-cursor-rg` in the `East US` region.

## Usage

1. Ensure you have [Terraform](https://www.terraform.io/downloads.html) and [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed.
2. Authenticate with Azure:
   ```sh
   az login
   ```
3. Initialize Terraform:
   ```sh
   terraform init
   ```
4. Apply the configuration:
   ```sh
   terraform apply
   ```
   Confirm the action when prompted.

## Files
- `main.tf`: Main Terraform configuration for the resource group
- `variables.tf`: Placeholder for future variables
- `outputs.tf`: Outputs for resource group name and location 

## Prompts used: To be shared
