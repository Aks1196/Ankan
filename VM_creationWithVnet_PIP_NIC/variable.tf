variable "prefix" {
  type        = string
  description = "Prefix for the resources"
  default = "AngurWala"
}


variable "rg_names" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {
    rg1 = {
      name     = "AngurWala-RG"
      location = "East US"
    }
  }
}



variable "vnets" {
  description = "Configuration for Virtual Networks."
  type = map(object({
    address_space = list(string)
  }))
  default = {
    rg1 = {
      address_space = ["10.0.0.0/16"]
    }
  }
}

variable "subnets" {
  type    = map(object({
    address_prefixes = list(string)
    virtual_network_name = string
  }))
  default = {
    rg1 = {
            address_prefixes = ["10.0.0.0/24"]
            virtual_network_name = "AngurWala-vnet"
          }

  }
}