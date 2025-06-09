Last Updated On 09 June 2025

# Azure Resource Group Terraform Configuration

This Terraform configuration creates an Azure Resource Group for the CursorAI MS Tech Summit demo.

## Prerequisites

1. **Azure CLI**: Install and configure Azure CLI
   ```bash
   az login
   ```

2. **Terraform**: Install Terraform (version >= 1.0)

## Configuration

- **Resource Group Name**: `example-cursor-rg`
- **Location**: `East US`
- **Tags**: Environment=Demo, Project=CursorAI-MSTechSummit

## Usage

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

4. **Destroy resources** (when done):
   ```bash
   terraform destroy
   ```

## Files

- `main.tf`: Main Terraform configuration
- `variables.tf`: Variable definitions
- `outputs.tf`: Output definitions
- `.gitignore`: Git ignore file for Terraform

## Customization

You can override the default values by creating a `terraform.tfvars` file:

```hcl
resource_group_name = "my-custom-rg"
location           = "West US 2"
``` 