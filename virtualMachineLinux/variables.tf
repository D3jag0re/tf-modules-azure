############
## shared ##
############

variable "location" {
  type        = string
  description = "location to deploy."
  default     = "canadacentral"
}

variable "rg_name" {
  type        = string
  description = "Resource Group name where to deploy NIC"
}

#########
## NIC ##
#########
#variable "nic_name" {
#  type        = string
#  description = "NIC Name"
#}

variable "nic_subnet" {
  type        = string
  description = "Subnet which to deploy NIC"
}

########
## VM ##
########

variable "vm_name" {
  type        = string
  description = "VM Name"
}

variable "size" {
  type        = string
  description = "Resource Group where to deploy VM"
  default = "Standard_B1ms"
}