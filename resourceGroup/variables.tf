variable "rg_name" {
  type        = string
  description = "Name of the resource group to be deployed"
  default     = "rg-example"
}

variable "rg_location" {
  description = "The location/region to deploy"
  default     = "canadacentral"
}

variable "tags" {
  description = "A list of tags"
  type        = any
}
