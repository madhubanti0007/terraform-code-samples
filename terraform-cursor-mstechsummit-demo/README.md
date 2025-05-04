Hello users
# Azure Resource Group Provisioning with Terraform

This configuration provisions an Azure Resource Group named `terraform-mstechsummit-rg` in the `East US` region.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure CLI installed and authenticated (`az login`)

## Usage
1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Review the execution plan:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```

## Files
- `main.tf`: Provider and resource definitions
- `variables.tf`: Variable definitions (currently empty)
- `outputs.tf`: Output values
- `terraform.tfvars`: Variable values (currently empty)

## Clean Up
To destroy the resource group:
```sh
terraform destroy
``` 