output "service_bus_id" {
  description = "The ID of the Service Bus Namespace."
  value       = azurerm_servicebus_namespace.service_bus_namespace.id
}

output "service_bus_name" {
  description = "The name of the Service Bus Namespace."
  value       = azurerm_servicebus_namespace.service_bus_namespace.name
}
