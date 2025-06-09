Last Updated on 9th June 2025

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
2. Review the plan:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```
4. Confirm the resource group is created in Azure.

## Files
- `main.tf`: Main Terraform configuration for the resource group
- `variables.tf`: (Currently empty) For future variables
- `outputs.tf`: Outputs for the resource group name and location 
