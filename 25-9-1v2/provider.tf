terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "d73ab938-2a60-42e2-87cd-9362d4e73029"
}


