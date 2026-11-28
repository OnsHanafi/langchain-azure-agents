resource "azurerm_resource_group" "rg" {
  name = "rg-agents-langchain-${var.prefix}.${random_string.suffix.result}"
  location = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

