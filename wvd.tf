terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.56.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "wvdrg" {
  name     = var.rg-name
  location = var.location
}
