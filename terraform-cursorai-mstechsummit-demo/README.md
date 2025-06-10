# Azure Resource Group with Terraform

This Terraform configuration creates an Azure Resource Group for the Cursor AI MS Tech Summit demo.

## Prerequisites

1. **Azure CLI**: Install and configure Azure CLI
2. **Terraform**: Install Terraform (>= 1.0)
3. **Azure Subscription**: Ensure you have access to an Azure subscription

## Setup

1. **Login to Azure**:
   ```bash
   az login
   ```

2. **Set the subscription** (if you have multiple):
   ```bash
   az account set --subscription "your-subscription-id"
   ```

## Deployment

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Plan the deployment**:
   ```bash
   terraform plan
   ```

3. **Apply the configuration**:
   ```bash
   terraform apply
   ```

4. **Confirm the deployment** by typing `yes` when prompted.

## Resources Created

- **Azure Resource Group**: `example-cursor-rg` in East US region

## Cleanup

To destroy the resources:
```bash
terraform destroy
```

## File Structure

- `terraform.tf` - Provider configuration and requirements
- `variables.tf` - Variable definitions
- `main.tf` - Main resource configuration
- `outputs.tf` - Output definitions
- `terraform.tfvars` - Variable values
- `README.md` - This documentation