variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of SA"
  type        = string
}

variable "storage_accounts" {
  description = "SA names indexed by environment"
  type = map(string)
 }