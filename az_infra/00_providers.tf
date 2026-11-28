terraform {
    required_version = ">= 1.14, <2.0"
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 5.0"
        }
        azapi = {
            source  = "azure/azapi"
            version = "~>2.13"
        }
        random = {
            source  = "hashicorp/random"
            version = "~> 3.6"
        }
    }

}

provider "azurerm" {
    subscription_id = var.subscription_id
    use_cli = true

    resource_providers_to_register = [
        "Microsoft.Web",
        "Microsoft.App",
        "Microsoft.CognitiveServices",
        "Microsoft.DocumentDB",
    ]

    features {
        resource_group {
            prevent_deletion_if_contains_resources = false
        }
        cognitive_account {
            purge_soft_delete_on_destroy = true
        }
    }
}

provider "azapi" {
    subscription_id = var.subscription_id
    use_cli = true
}
