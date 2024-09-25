resource "azurerm_resource_group" "storagecontainer" {
  name     = var.storageresourcegroup
  location = var.location
}

resource "azurerm_storage_account" "storageresourcegroup" {
  name                     = var.storagecontainer2
  resource_group_name      = azurerm_resource_group.storageresourcegroup.name
  location                 = azurerm_resource_group.centralus.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

