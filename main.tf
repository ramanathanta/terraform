terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.31.1"
    }
  }
}

provider "azurerm" {
  features {}

  tenant_id = "3b76748a-d23d-4d72-8c0e-ba387c03db72"
}

resource "azurerm_resource_group" "rg" {
  name     = "my_terraform_rg"
  location = "sountcentralus"
  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}