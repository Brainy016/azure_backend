
output "storage_account_key" {
  value = azurerm_storage_account.tfstate.primary_access_key
  sensitive = true
}

# Environment variable to use ARM_ACCESS_KEY
locals {
  arm_access_key = azurerm_storage_account.tfstate.primary_access_key
}

output "arm_access_key_env_variable" {
  value = "export ARM_ACCESS_KEY=${local.arm_access_key}"
  sensitive = true
}
# output "storage_account_name" {
#   value = azurerm_storage_account.tfstate.name
# }