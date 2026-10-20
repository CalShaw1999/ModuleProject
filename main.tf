data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

module "storage_account" {
  source   = "./modules/storage-account"
  for_each = var.storage_accounts

  storage_account_name = each.value
  resource_group_name  = data.azurerm_resource_group.existing.name
  location             = data.azurerm_resource_group.existing.location

  tags = {
    environment = each.key
    managed_by  = "terraform"
  }
}
