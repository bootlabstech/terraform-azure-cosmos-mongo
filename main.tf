resource "random_string" "cosmos_server_postfix" {
  length  = 8
  special = false
  upper   = false
  lower   = true
  number  = true
}

resource "azurerm_cosmosdb_account" "db" {

  name                      = "${var.name}-${random_string.cosmos_server_postfix.id}-account"
  location                  = var.location
  resource_group_name       = var.resource_group_name
  offer_type                = var.offer_type
  kind                      = var.kind
  enable_automatic_failover = true

  capabilities {
    name = var.capabilities
  }

  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }
  geo_location {
    location          = var.location
    failover_priority = 0
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_cosmosdb_mongo_database" "mongodb" {
  name                = "${var.name}-${random_string.cosmos_server_postfix.id}-mongo-db"
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.db.name
  throughput          = var.mongodb_throughput
}