Last updated on 6th Jun 2025
# Terraform Azure Resource Group Example

This configuration creates an Azure Resource Group using Terraform.

## Prerequisites
- Terraform installed
- Azure subscription

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

## Resource Group Details
- **Name:** example-cursor-rg
- **Location:** East US

> **Note:** Provider credentials are set in `provider.tf`. For security, do not commit this file to version control. 
