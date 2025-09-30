#RG Variables

variable "rg_names"{
type = map(object({
  name     = string
  location = string
}))
default = {
#rg1 i need to mentioned here cause i have not mentioned the details of aks rgs in variables for aks . i used aks key as rg key.
rg1 = {
    name     = "rg1"
    location = "East US"
  }
rg2 = {
    name     = "rg2"
    location = "East US"
  }
}
}


#AKS Variables

#-------------------------------------

variable "ChorAKS" {
  description = "Configuration for the AKS cluster."
  type = map (object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
  }))
  default = {
  #here, i mentioned rg1 details cause it has been coming from the variables of rg .
  rg1 = {
    name                = "ChorAKS"
#i dont mentioned the rg details cause ihave used a module output block in rg using module(dynamically) calling 
#from aks module block but catch is that i have to use the location and rg name as i mentioned object in variable type.
    location            = " "
    resource_group_name = " "
    dns_prefix          = "choraks"
    }
 /*   rg2 = {
    name                = "ChorAKS"
#i dont mentioned the rg details cause ihave used a module output block in rg using module(dynamically) calling 
#from aks module block but catch is that i have to use the location and rg name as i mentioned object in variable type.
    location            = " "
    resource_group_name = " "
    dns_prefix          = "choraks"
    }*/
  }
}


variable "identity_type" {
  description = "The type of identity used for the AKS cluster. Possible values are 'SystemAssigned', 'UserAssigned', or 'None'."
  type        = string
  default     = "SystemAssigned"
}

variable "node_pool_config" {
  description = "Configuration for the default node pool."
  type = object({
    name       = string
    node_count = number
    vm_size    = string
  })
  default = {
    name       = "angur"
    node_count = 1
    vm_size    = "standard_D2ads_v6"
  }
}