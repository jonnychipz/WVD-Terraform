resource "azurerm_virtual_desktop_host_pool" "wvdhppooled" {
  name                = var.pooled-hp-name
  location            = azurerm_resource_group.wvdrg.location
  resource_group_name = azurerm_resource_group.wvdrg.name

  type               = "Pooled"
  load_balancer_type = "DepthFirst"
}