variable "location" {
  description = "Location to Create all resources"
  default = "uksouth"
}

variable "rg-name" {
  description = "The name of the resource group to be created"
  default = "jonnychipz-wvd-rg"
}

variable "wkspace-name" {
  description = "The name of the WVD workspace to be created"
  default = "jonnychipz-wvd-wkspace"
}

variable "hppooled-name" {
  description = "The name of the WVD pooled hostpool to be created"
  default = "jonnychipz-wvd-pool-hp"
}

variable "appgrp-name" {
  description = "The name of the WVD app group to be created"
  default = "jonnychipz-wvd-desktop-ag"
}

resource "azurerm_resource_group" "wvdrg" {
  name     = var.rg-name
  location = var.location
}