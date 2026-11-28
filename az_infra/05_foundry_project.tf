resource "azurerm_cognitive_project" "project" {
    name = "foundry-project-${var.prefix}"
    location = azurerm_cognitive_account.foundry.location
    cognitive_account_id = azurerm_cognitive_account.foundry.id
    display_name = "Foundry Project"

    identity {
        type = "SystemAssigned"
    }
}

resource "azurerm_role_assignment" "role_foundry_project_user" {
    scope = azurerm_cognitive_project.foundry.id
    role_definition_name = "Foundry Project User"
    principal_id = azurerm_cognitive_account_project.project.identity[0].principal_id

}

output "foundry_project_endpoint" {
    value = azurerm_cognitive_project.foundry.endpoints["AI Foundry API"]
}