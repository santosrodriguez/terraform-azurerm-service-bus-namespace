# Azure Service Bus Namespace Terraform Module

## Introduction
Deploy an Azure Service Bus Namespace with Private Endpoint integration using Terraform.

## Usage

```hcl
module "service_bus_namespace" {
  source = "caresource.pe.jfrog.io/shared-tfmodules-internal__integration/service-bus-namespace/azurerm"
  version = "0.1.0"
  environment = var.environment
  resource_group_name = "rg-${var.solution_name}-servicebus-${var.location}-${var.environment}-01"
  private_endpoint_subnet_id = "/subscriptions/../resourceGroups/../providers/Microsoft.Network/virtualNetworks/../subnets/.."
  sku = "Standard"
  solution_name = var.solution_name
}
```

## Inputs
| Name                                | Type           | Description                                        | Default    |
|--------------------------------------|----------------|----------------------------------------------------|------------|
| environment                          | string         | The environment for the service bus (e.g., dev, test, prod). | n/a |
| private_endpoint_subnet_id           | string         | The ID of the subnet where the private endpoint will be created. | n/a |
| resource_group_name                  | string         | The name of the resource group where the service bus namespace will be created. | n/a |
| sku                                  | string         | The SKU of the service bus namespace (e.g., Basic, Standard, Premium). | n/a |
| solution_name                        | string         | The name of the solution or project.                | n/a |

## Outputs
| Name                                  | Description                              |
|-----------------------------------------|-------------------------------------------|
| service_bus_id                       | The ID of the Service Bus Namespace.     |
| service_bus_name                     | The name of the Service Bus Namespace.   |

## Features

- Service Bus Namespace creation with system-assigned managed identity
- Private Endpoint integration
- Public network access disabled by default

## Requirements

- Terraform >= 1.4.0
- AzureRM >= 3.0
