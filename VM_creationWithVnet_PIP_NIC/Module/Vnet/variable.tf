variable "vnet" {
  description = "Configuration for the Virtual Network."
  type = object({
    address_space = list(string)
    name          = string
    location      = string
    resource_group_name = string
  })
} 

variable "prefix" {
  type        = string
  description = "Prefix for the VNet name"
}