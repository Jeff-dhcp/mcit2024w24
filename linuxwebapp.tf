


resource "azurerm_resource_group" "jeffresourcegroup" {
  name     = var.name
  location = var.location
}

resource "azurerm_service_plan" "jeffserviceplan" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.jeffresourcegroup.name
  location            = azurerm_resource_group.jeffresourcegroup.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "" {
  name                = "example"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}






