terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.56.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.wkspace-name
  location            = azurerm_resource_group.wvdrg.location
  resource_group_name = azurerm_resource_group.wvdrg.name

  friendly_name = var.wkspace-name
  description   = "Test Workspace Deployed using Terraform"
}

resource "azurerm_virtual_desktop_host_pool" "wvdhppooled" {
  name                = var.hppooled-name
  location            = azurerm_resource_group.wvdrg.location
  resource_group_name = azurerm_resource_group.wvdrg.name

  type               = "Pooled"
  load_balancer_type = "DepthFirst"
}

resource "azurerm_virtual_desktop_application_group" "desktopapp" {
  name                = var.appgrp-name
  location            = azurerm_resource_group.wvdrg.location
  resource_group_name = azurerm_resource_group.wvdrg.name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.wvdhppooled.id
  friendly_name = var.appgrp-name
  description   = "Test App Group"
}

resource "azurerm_virtual_desktop_workspace_application_group_association" "workspacedesktopapp" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.desktopapp.id
}