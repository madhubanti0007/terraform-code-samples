Last updated on 6th June
  
# Azure Resource Group with Terraform

This configuration creates an Azure Resource Group named `example-cursor-rg` in the `East US` region using Terraform.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure CLI installed and logged in (`az login`)
- An active Azure subscription

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
- `variables.tf`: (Optional) Variables for extensibility
- `outputs.tf`: Outputs for resource group name and location 
