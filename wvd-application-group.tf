
resource "azurerm_virtual_desktop_application_group" "desktopapp" {
  name                = var.appgrp-name
  location            = azurerm_resource_group.wvdrg.location
  resource_group_name = azurerm_resource_group.wvdrg.name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.wvdhppooled.id
  friendly_name = var.appgrp-name
  description   = "Test App Group"
}