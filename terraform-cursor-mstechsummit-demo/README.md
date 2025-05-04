# Azure Resource Group Terraform Example

This configuration creates an Azure Resource Group named `example-cursor-rg` in the `East US` region.

## Usage

1. Ensure you have [Terraform](https://www.terraform.io/downloads.html) and [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed.
2. Authenticate with Azure:
   ```sh
   az login
   ```
3. Initialize Terraform:
   ```sh
   terraform init
   ```
4. Apply the configuration:
   ```sh
   terraform apply
   ```
   Confirm the action when prompted.

## Files
- `main.tf`: Main Terraform configuration for the resource group
- `variables.tf`: Placeholder for future variables
- `outputs.tf`: Outputs for resource group name and location 

## Prompts used: To be shared
create a directory terraform-cursor-mstechsummit-demo in current path

I want to create resource group using terraform in Azure . For that create necessary files. Resource group name will be example-cursor-rg and location is East US

in main.tf in provider block refer to necessary variables
XXXXX is my subscription id
XXXXX is my app id
XXXXXX is my tenant id
XXXXXX is my client secret

create .gitignore file 

Now run terraform init

run terraform plan

run terraform apply

create new chat

Add context to directory and send below prompt

I want to commit the directory in master branch of @https://github.com/madhubanti0007/terraform-code-samples 

My github personal access token is XXXXX
