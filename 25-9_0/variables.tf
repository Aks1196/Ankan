variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {
    rg1 = {
      name     = "rg1"
      location = "eastus"
    }
    rg2 = {
      name     = "rg2"
      location = "westus"
    }
  }
}

variable "storages" {
  type = map(object({
    name = string
    rg   = string
    location = string
  }))
  default = {
    stg1 = {
      name     = "lapata1"
      rg       = "rg1"
      location = "eastus"
    }
    stg2 = {
      name     = "lapata2"
      rg       = "rg2"
      location = "westus"
    }
  }
}