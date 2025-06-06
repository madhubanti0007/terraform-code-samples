Last Updated On 6th June

# terraform-cursorai-mstechsummit-demo

This directory contains a sample Terraform configuration for deploying resources on Azure. It is intended for demonstration purposes at the MS Tech Summit.

## Contents
- `main.tf`: Main Terraform configuration file
- `variables.tf`: Input variable definitions
- `provider.tf`: Provider configuration
- `terraform.tfvars`: Variable values
- `.terraform.lock.hcl`: Provider dependency lock file
- `terraform.tfstate`: Terraform state file (for demo only; do not commit state files in production)

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- An Azure subscription

## Usage
1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Plan the deployment:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```

## Notes
- This is a demo setup. Do not use the state file in production repositories.
- Update variable values in `terraform.tfvars` as needed.

## Author
- [madhubanti0007](https://github.com/madhubanti0007)
