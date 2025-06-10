# Azure Resource Group with Terraform

This Terraform configuration creates an Azure Resource Group for the CursorAI MS Tech Summit demo.

## Prerequisites

1. Azure CLI installed and configured
2. Terraform installed (version 1.0+)
3. Azure subscription with appropriate permissions

## Authentication

Before running Terraform, authenticate with Azure using one of these methods:

### Option 1: Azure CLI
```bash
az login
az account set --subscription "your-subscription-id"
```

### Option 2: Service Principal (for CI/CD)
Set the following environment variables:
```bash
export ARM_CLIENT_ID="your-client-id"
export ARM_CLIENT_SECRET="your-client-secret"
export ARM_SUBSCRIPTION_ID="your-subscription-id"
export ARM_TENANT_ID="your-tenant-id"
```

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Plan the deployment:
```bash
terraform plan
```

3. Apply the configuration:
```bash
terraform apply
```

4. To destroy the resources:
```bash
terraform destroy
```

## Configuration

The configuration includes:
- **Resource Group Name**: example-cursor-rg
- **Location**: East US
- **Tags**: Environment, Project, CreatedBy, Owner

You can modify these values in `terraform.tfvars` or override them during apply:
```bash
terraform apply -var="resource_group_name=my-custom-rg"
```

## Files

- `providers.tf` - Provider configuration
- `variables.tf` - Variable definitions
- `main.tf` - Resource group configuration
- `outputs.tf` - Output definitions
- `terraform.tfvars` - Variable values
- `README.md` - This documentation