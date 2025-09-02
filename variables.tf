variable "storage_accounts" {
  type = map(object({
    location          = string
    account_tier      = string
    replication_type  = string
  }))
}