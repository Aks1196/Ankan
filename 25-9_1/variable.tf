variable "rg_names"{
type = map(object({
  name     = string
  location = string
}))
default = {
rg1 = {
    name     = "rg1"
    location = "West US"
  }
 rg2 = {
        name     = "rg2"
        location = "East US"
    }

}  

}

variable "storage_accounts" {
  type = map(object({
    name                = string
    rg                  = string
    location            = string
    replication_type    = string
  }))
  default = {
    storage1 = {
      name                = "bondhurbabakenomatal"
      rg                  = "rg1"
      location            = "West US"
      replication_type    = "LRS"
    }
    storage2 = {
      name                = "matarani"
      rg                  = "rg2"
      location            = "east us"
      replication_type    = "GRS"
    }
  }
}


