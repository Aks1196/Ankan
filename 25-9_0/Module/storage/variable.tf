variable "name" {
  type        = string
  description = "The name of the Azure storage account"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region where the storage account will be created"
}

variable "replication_type" {
  type    = string
  default = "LRS"
  description = "Replication type for the storage account (LRS, GRS, RAGRS, ZRS)"
}
variable "account_tier" {
  type    = string
  default = "Standard"
  description = "The performance tier of the storage account (Standard or Premium)"
}