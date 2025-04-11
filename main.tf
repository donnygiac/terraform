terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region                      = var.aws.aws_region
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = var.aws.aws_access_key
  secret_key                  = var.aws.aws_secret_key
  alias                       = "aws_default"
}

provider "azurerm" {
  features {}
  alias = "azure_default"
}

module "aws_instance" {
  source = "./modules/aws_instance"
  providers = {
    aws = aws.aws_default
  }
  ami               = var.aws.aws_ami
  instance_type     = var.aws.aws_instance_type
  subnet_id         = var.aws.aws_subnet_id
  security_group_id = var.aws.aws_security_group_id
  key_name          = var.aws.aws_key_name
  instance_name     = var.aws.aws_instance_name
  environment       = var.aws.aws_environment
  service           = var.aws.aws_service
  volume_size       = var.aws.aws_volume_size
}

module "azure_instance" {
  source = "./modules/azure_instance"
  providers = {
    azurerm = azurerm.azure_default
  }
  vm_size                    = var.azure.azure_vm_size
  location                   = var.azure.azure_location
  azure_subnet_id            = var.azure.azure_subnet_id
  azure_public_ip_address_id = var.azure.azure_public_ip_address_id
  resource_group_name        = var.azure.azure_resource_group_name
  nic_name                   = var.azure.azure_nic_name
  os_disk_name               = var.azure.azure_os_disk_name
  ssh_public_key_path        = var.azure.azure_ssh_public_key_path
  vm_name                    = var.azure.azure_vm_name
  admin_username             = var.azure.azure_admin_username
  instance_name              = var.azure.azure_instance_name
  environment                = var.azure.azure_environment
  service                    = var.azure.azure_service
}
