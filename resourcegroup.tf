resource "azurerm_resource_group" "mcit420zz5um" {
  name     = var.azurermresourcegroup
  location = "canadacentral"
}

resource "azurerm_resource_group" "loadbalancer" {
  name     = var.loadbalancer
  location = "eastus"
}
resource "azurerm_resource_group" "OSPF" {
  name     = var.OSPF
  location = "eastus"
}
resource "azurerm_resource_group" "network" {
  name     = var.network
  location = "eastus"
}
