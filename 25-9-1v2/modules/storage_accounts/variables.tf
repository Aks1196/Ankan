variable "storage_accounts"{
  type = object({
    name             = string
    replication_type = string
    resource_group_name = string
    location         = string
  })
}
