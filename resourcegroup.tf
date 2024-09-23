resource "azurerm_resource_group" "mcit420zz5um" {
  name     = var.azurermresourcegroup
  location = var.location1
}

resource "azurerm_resource_group" "loadbalancer" {
  name     = var.loadbalancer
  location = var.location2
}
resource "azurerm_resource_group" "OSPF" {
  name     = var.OSPF
  location = var.location3
}
resource "azurerm_resource_group" "network" {
  name     = var.network
  location = var.location2
}


