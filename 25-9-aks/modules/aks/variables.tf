variable "identity_type" {
  description = "The type of identity used for the AKS cluster. Possible values are 'SystemAssigned', 'UserAssigned', or 'None'."
  type        = string
}

variable "node_pool_config" {
  description = "Configuration for the default node pool."
  type = object({
    name       = string
    node_count = number
    vm_size    = string
  })
} 

variable "ChorAKS" {
  description = "Configuration for the AKS cluster."
  type = object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
  })
}