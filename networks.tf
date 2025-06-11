# Resource group
resource "azurerm_resource_group" "network" {
  name     = "sjb-rg-${var.region_prefix}-network"
  location = var.region

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
