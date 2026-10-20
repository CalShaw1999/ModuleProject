data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

module "storage_account" {
  source = "./modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = data.azurerm_resource_group.existing.name
  location             = data.azurerm_resource_group.existing.location

  tags = {
    environment = "development"
    managed_by  = "terraform"
  }
}
