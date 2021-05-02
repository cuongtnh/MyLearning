terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

backend "remote" {
   organization = "cuongtnhlab"
   workspaces {
     name = "aks-lab-01"
   }
 }
}

provider "azurerm" {
  features {}
}
