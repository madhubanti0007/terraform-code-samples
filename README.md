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

## Files
- `main.tf`: Main Terraform configuration for the resource group
- `variables.tf`: (Empty) Placeholder for future variables
- `outputs.tf`: Outputs for the resource group name and location 