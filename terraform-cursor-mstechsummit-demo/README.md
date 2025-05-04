# Terraform Azure Resource Group Example

This configuration creates an Azure Resource Group named `example-cursor-rg` in the `East US` region.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- An Azure subscription
- Azure CLI authenticated or environment variables set for Azure credentials

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
- `main.tf`: Resource group definition
- `providers.tf`: Provider requirements
- `variables.tf`: (Empty, for future use)
- `outputs.tf`: Outputs resource group name and location 