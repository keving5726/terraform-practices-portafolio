locals {
  prefix = "${var.project}-${var.environment}-${var.location}"

  default_tags = {
    project     = var.project
    environment = var.environment
    owner       = var.owner
    managedby   = "terraform"
  }
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${local.prefix}-001"
  location = var.location

  tags = local.default_tags
}
