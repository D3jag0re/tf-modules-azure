variable "subscription_id" {
  type        = string
  description = "The subscription ID where resources are to be deployed"
}
variable "resource_group_name" {
  type        = string
  description = "Name of the RG where key vault is to be deployed."
}
variable "key_vault_name" {
  type        = string
  description = "Name of the key vault to be cerated."
}
variable "key_vault_location" {
  type        = string
  description = "Location where the recovery service vault is to be deployed."
}
variable "sku" {
  type        = string
  description = "Sku of the key vault."
  default     = "standard"
}
variable "soft_delete_retention_days" {
  type        = number
  description = "The number of days that items should be retained for once soft-deleted."
  default     = 7
}
variable "public_network_access_enabled" {
  type        = string
  description = "Whether public network access is allowed for this Key Vault."
  default     = "true"
}
variable "purge_protection_enabled" {
  type        = bool
  description = "Set to true if purge_protection is to be enabled."
  default     = false 
}

variable "rbac_enabled" {
  type        = bool
  description = "Set rbac instead of KV access policy"
  default     = true
}