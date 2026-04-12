terraform {
  backend "azurerm" {
    resource_group_name = "akrg"
    storage_account_name = "akstore0505"
    container_name = "myconetf"
    key  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.67.0"
    }
  }
}
provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "akrg" {
  name     = "akrg"
  location = "west us"
}
resource "azurerm_storage_account" "akstore" {


  name                     = "akstore0505"
  resource_group_name      = "akrg"
  location                 = "west us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "mycon" {
  name                 = "myconetf"
  storage_account_name = "akstore0505"
  container_access_type  = "private"

}