terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  } 
  backend "azurerm" {
    resource_group_name  = "amr-ankan1"
    storage_account_name = "backendlapata"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "07181b5e-cb73-4072-8605-0c0f9f4ae28f"
}


