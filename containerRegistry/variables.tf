variable "resource_group_name" {
  description = "The name of the resource group in which to create the container registry."
  type        = string
}

variable "location" {
  description = "The location of the resource group."
  type        = string
}

variable "registry_name" {
  description = "The name of the container registry. Must be globally unique and only include alphanumeric characters"
  type        = string
}

variable "sku" {
  description = "The SKU of the container registry. Possible values are Basic, Standard, and Premium."
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Boolean flag to enable or disable the admin user."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}