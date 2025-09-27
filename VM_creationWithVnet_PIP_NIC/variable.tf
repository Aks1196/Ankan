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

variable "prefix" {
  type        = string
  description = "Prefix for the resources"
  default = "AngurWala"
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