# Terraform Azure Resource Group Demo

This Terraform configuration creates an Azure Resource Group for the CursorAI MS Tech Summit demo.

## Prerequisites

1. **Azure CLI**: Install and configure Azure CLI
   ```bash
   az login
   ```

2. **Terraform**: Install Terraform (version >= 1.0)

## Configuration

The configuration will create:
- Resource Group: `example-cursor-rg`
- Location: `East US`
- Tags for environment identification

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

4. **Destroy resources** (when no longer needed):
   ```bash
   terraform destroy
   ```

## Customization

You can customize the resource group by modifying the variables in `variables.tf` or by creating a `terraform.tfvars` file:

```hcl
resource_group_name = "my-custom-rg"
location           = "West US 2"
tags = {
  Environment = "Production"
  Project     = "MyProject"
}
```

## Outputs

After successful deployment, the following information will be displayed:
- Resource Group ID
- Resource Group Name
- Resource Group Location 