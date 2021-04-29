resource "azurerm_virtual_desktop_workspace_application_group_association" "workspacedesktopapp" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.desktopapp.id
}