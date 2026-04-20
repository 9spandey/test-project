resource "azurerm_resource_group" "rg" {
  name = "est-rg"
  location = "centralindia"
}

resource "azurerm_storage_account" "stg" {
name = "test-stg001"
resource_group_name = azurerm_resource_group.rg.name
location = azurerm_resource_group.rg.location
account_tier = "Standard"
account_replication_type = "LRS"
}