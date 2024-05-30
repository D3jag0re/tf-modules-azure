# Storage Accounts
variable "storage_acc_rg_name" {
  type        = string
  description = "Name of the Resource Group where the Storage Account must be deployed."
}

variable "storage_acc_name" {
  type        = string
  description = "Name of the Storage Account"
}

variable "storage_acc_location" {
  type        = string
  default = "can-east"
  description = "Name of the region wherestorage account needs to be deployed."
}

variable "storage_acc_tier" {
  type        = string
  default     = "Standard"
  description = "Storage Account Tier"
}

variable "storage_acc_replication_type" {
  type        = string
  default     = "LRS"
  description = "Storage Account Replication Type "
}

variable "is_hns_enabled" {
  type        = bool
  default     = false
  description = "Is HNS Enabled"
}

variable "sftp_enabled" {
  type        = bool
  default     = false
  description = "Enable SFTP"
}

# Storage container 

variable "create_container" {
  type        = bool
  description = "Set to true if a container is also required, default is false"
  default     = false
}

variable "storage_container_names" {
  type    = list(string)
  default = ["container1", "container2", "container3"]
}

variable "storage_container_access_type" {
  type        = string
  default     = "private"
  description = "Access type of container"
}
