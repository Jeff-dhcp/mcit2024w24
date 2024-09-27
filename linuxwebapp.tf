


resource "azurerm_resource_group" "jeffresourcegroup" {
  name     = var.name
  location = var.location
}

resource "azurerm_service_plan" "jeffserviceplan" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.jeffresourcegroup.name
  location            = azurerm_resource_group.jeffresourcegroup.location
  os_type             = var.os_type
  sku_name            = var.p1v2
}

resource "azurerm_linux_web_app" "p1v2" {
  name                = "var.p1v2"
  resource_group_name = azurerm_resource_group.jeffsresourcegroup.name
  location            = azurerm_service_plan.jeffresourcegroup.location
  service_plan_id     = azurerm_service_plan.jeffserviceplan.id

  site_config {}
}






