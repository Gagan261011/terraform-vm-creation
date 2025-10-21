variable "resource_group_name" {
  type        = string
  description = "The name of the existing Azure Resource Group."
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "The size of the virtual machines."
}

variable "vm_count" {
  type        = number
  default     = 2
  description = "The number of virtual machines to create."
}

variable "vm_admin_user" {
  type        = string
  default     = "azureuser"
  description = "The admin username for the virtual machines."
}

variable "allow_ssh_from" {
  type        = string
  default     = "0.0.0.0/0"
  description = "The source IP range to allow SSH from."
}
