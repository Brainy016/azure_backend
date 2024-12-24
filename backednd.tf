terraform {
  backend "azurerm" {
      resource_group_name  = "terraform_state_resource"
      storage_account_name = "tfstategxh1t"
      container_name       = "my-container"
      key                  = "terraform.tfstate"
  }
}


# provider "azurerm" {
#   features {}
# }

# resource "azurerm_resource_group" "state-demo-secure" {
#   name     = "state-demo"
#   location = "eastus"
# }