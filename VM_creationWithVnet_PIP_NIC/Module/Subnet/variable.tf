variable "subnet" {
  type = object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  })
}

variable "prefix" {
  type        = string
  description = "Prefix for the resources"
}