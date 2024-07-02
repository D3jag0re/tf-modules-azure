variable "resource_group_name" {
  type        = string
  description = " Name of the resource group where NSG to be deployed."
}

variable "subnet_association" {
  type        = bool
  description = "Set to true if subnet association is required, default is false"
  default     = false
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the subnet's virtual network. Required only when subnet_association is set to true"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet. Required only when subnet_association is set to true"
}

variable "nsg_name" {
  type        = string
  description = "Name of the nsg to be created."
  default     = "example-nsg"
}

variable "nsg_location" {
  type        = string
  description = "Location of the nsg to be created."
  default     = "canadacentral"
}

variable "subnet_id" {
  type        = string
  description = "id of the subnet to associate NSG with"
  default     = null
}
