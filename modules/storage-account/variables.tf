variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "location" {
  description = "SA location"
  type        = string
}

variable "account_tier" {
  description = "SA tier"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Redundancy tier"
  type        = string
  default     = "LRS"
}