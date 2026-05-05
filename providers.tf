terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.69.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "testprojectstg01"
    container_name       = "tfstate"
    key                  = "test.tfstate"
  }
}

provider "azurerm" {
    features {}
    subscription_id = "01f21eee-bb54-414a-be2d-2c52eb70a68c"
}