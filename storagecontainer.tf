resource "azurerm_resource_group" "storagecontainer" {
  name     = var.storageresourcegroup
  location = var.location
}

resource "azurerm_storage_account" "storageresourcegroup" {
  name                     = var.storagecontainer2
  resource_group_name      = azurerm_resource_group.storagecontainer.name
  location                 = azurerm_resource_group.storagecontainer.location
  account_tier             = var.accounttier
  account_replication_type = var.accountreplicationtype

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "storagecontainer3" {
  name                  = var.storagecontainer3
  storage_account_name  = azurerm_storage_account.storageresourcegroup
  container_access_type = "private"
}

