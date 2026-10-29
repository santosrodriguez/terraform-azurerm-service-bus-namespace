resource "azurerm_servicebus_namespace" "namespace" {
  name                = "${var.solution_name}-${var.environment}-sb"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  public_network_access_enabled = var.public_network_access_enabled
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_private_endpoint" "servicebus_private_endpoint" {
  name                = "pe-${azurerm_servicebus_namespace.namespace.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.private_endpoint_subnet_id
  private_service_connection {
    name                           = "psc-${azurerm_servicebus_namespace.namespace.name}"
    is_manual_connection          = false
    private_connection_resource_id = azurerm_servicebus_namespace.namespace.id
    subresource_names             = [
      "namespace"
    ]
  }
  private_dns_zone_group {
    name = var.private_dns_zone_name
    private_dns_zone_ids = var.private_dns_zone_ids
  }
}
