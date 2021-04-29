

resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.wkspace-name
  location            = azurerm_resource_group.wvdrg.location
  resource_group_name = azurerm_resource_group.wvdrg.name

  friendly_name = var.wkspace-name
  description   = "Terraform Deployed - WVD Workspace"
}