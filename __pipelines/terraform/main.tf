# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.17.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  subscription_id = "f34e0375-3273-466f-aace-63313b037fe6"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "portfolio-website"
  location = "westus2"
}
