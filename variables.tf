variable "environment" {
  description = "The environment for the service bus (e.g., dev, test, prod)."
  type        = string
}

variable "location" {
  description = "The Azure region where the service bus namespace will be created."
  type        = string
  default     = "eastus"
}

variable "private_dns_zone_name" {
  description = "The name of the private DNS zone for the service bus namespace."
  type        = string
  default     = "default"
}

variable "private_dns_zone_ids" {
  description = "The ID of the private DNS zone for the service bus namespace."
  type        = list(string)
  default     = [
    "/subscriptions/56bdaed4-70cf-4a28-8fb8-0efc135bb29f/resourceGroups/rg-azuredns-prd-01/providers/Microsoft.Network/privateDnsZones/privatelink.servicebus.windows.net"
  ]
}

variable "private_endpoint_subnet_id" {
  description = "The ID of the subnet where the private endpoint will be created."
  type        = string
}

variable "public_network_access_enabled" {
  description = "Whether public network access is enabled for the service bus namespace."
  type        = bool
  default     = false
}

variable "resource_group_name" {
  description = "The name of the resource group where the service bus namespace will be created."
  type        = string
}

variable "sku" {
  description = "The SKU of the service bus namespace (e.g., Basic, Standard, Premium)."
  type        = string
}

variable "solution_name" {
  description = "The name of the solution or project."
  type        = string
}
