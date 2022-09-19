output "cosmosdb_connectionstrings" {
  value     = azurerm_cosmosdb_account.db.connection_strings
  sensitive = true
}

output "cosmos_server_postfix" {
  value = random_string.cosmos_server_postfix.result
}