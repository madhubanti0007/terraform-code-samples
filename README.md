# Azure Resource Group with Terraform

This configuration creates an Azure Resource Group named `example-cursor-rg` in the `East US` region.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure CLI installed and authenticated (`az login`)
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
4. Confirm the outputs:
   - Resource group name
   - Resource group location

## Files
- `main.tf`: Main Terraform configuration
- `variables.tf`: (Empty) For future variables
- `outputs.tf`: Outputs for the resource group 