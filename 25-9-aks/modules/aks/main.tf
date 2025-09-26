

resource "azurerm_kubernetes_cluster" "aks-baba" {
  name                =var.ChorAKS.name
  location            = var.ChorAKS.location
  resource_group_name = var.ChorAKS.resource_group_name
  dns_prefix          = var.ChorAKS.dns_prefix

  default_node_pool {
    name       = var.node_pool_config.name
    node_count = var.node_pool_config.node_count
    vm_size    = var.node_pool_config.vm_size
  }

  identity {
    type = var.identity_type
  }

}

