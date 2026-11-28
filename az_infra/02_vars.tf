variable "prefix" {
  description = "Prefix for resources"
  type = string
  default = "300"
}

variable "location" {
  description = "region for deployed resources"
  type = string
  default = "swedencentral"
}

variable "subscription_id" {
  description = "Subscription ID for the Azure resources"
  type = string
  default = null
}

variable "app_service_sku_name" {
  description = "SKU name for the App Service Plan"
  type = string
  default = "P0v3" # "B1" 
}