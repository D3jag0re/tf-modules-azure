variable "rg_name" {
  type = string
}

variable "app_service_plan_rg_name" {
  type        = string
  description = "The Name of the resource group where the app service plan is"
}

variable "app_service_plan_name" {
  type        = string
  description = "The Name of the App service plan to be used"
}

variable "app_service_name" {
  type        = string
  description = "App Service name"
}

variable "app_service_location" {
  type        = string
  default = "can-east"
  description = "App Service location"
}

variable "managed_identity_enabled" {
  description = "Specifies if managed identity should be enabled for the App Service. Defaults to false."
  type        = bool
  default     = false
}


variable "managed_identity_type" {
  description = "Specifies the type of managed identity. Defaults to 'SystemAssigned' can also be set to 'UserAssigned"
  type        = string
  default     = "SystemAssigned"
}
