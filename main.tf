terraform {
  required_version = ">=1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "5.2.0"
  resource_group_name = azurerm_resource_group.resource_group.name
  use_for_each        = true
  resource_group_location = var.location
  subnet_names        = ["subnet-${var.environment}"]
  vnet_name           = "vnet-${var.environment}"

}