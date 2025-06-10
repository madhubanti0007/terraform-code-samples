Last Updated on 10th June 2025

# Azure Resource Group Terraform Demo

This Terraform configuration creates an Azure Resource Group for the CursorAI MS Tech Summit demo.

## Prerequisites

1. **Azure CLI installed and configured**
   ```bash
   az login
   ```

2. **Terraform installed**
   - Download from [terraform.io](https://www.terraform.io/downloads.html)

## Configuration

- **Resource Group Name**: `example-cursor-rg`
- **Location**: `East US`

## Usage

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Plan the deployment**
   ```bash
   terraform plan
   ```

3. **Apply the configuration**
   ```bash
   terraform apply
   ```

4. **Destroy resources (when done)**
   ```bash
   terraform destroy
   ```

## Files

- `main.tf` - Main Terraform configuration with provider and resource definitions
- `variables.tf` - Variable definitions
- `outputs.tf` - Output values after resource creation
- `README.md` - This documentation file

## Outputs

After successful deployment, you'll see:
- Resource Group Name
- Resource Group Location
- Resource Group ID