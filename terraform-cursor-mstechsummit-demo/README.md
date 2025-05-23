# Terraform Cursor MS Tech Summit Demo

This repository contains a sample Terraform configuration for demonstration purposes at the MS Tech Summit. It provisions cloud resources using best practices and is intended for educational and demo use.

## Project Structure

- `main.tf` - Main Terraform configuration file defining resources.
- `variables.tf` - Input variables for parameterizing the deployment.
- `outputs.tf` - Output values from the Terraform deployment.
- `providers.tf` - Provider configuration (e.g., Azure, AWS, GCP).
- `terraform.tfvars` - Variable values for this deployment (do not commit secrets!).
- `.gitignore` - Files and patterns to ignore in version control.

## Getting Started

### Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Cloud provider credentials (e.g., Azure, AWS, GCP)

### Usage
1. **Initialize Terraform:**
   ```sh
   terraform init
   ```
2. **Plan the deployment:**
   ```sh
   terraform plan
   ```
3. **Apply the configuration:**
   ```sh
   terraform apply
   ```

### Clean Up
To destroy the resources created by this configuration:
```sh
terraform destroy
```

## Notes
- Do not commit sensitive information (e.g., secrets, cloud credentials) to this repository.
- `.tfstate` files and other sensitive files are gitignored by default.

## License
This project is for demo purposes only. Please adapt as needed for your own use cases. 

## Prompts used
To be shared
