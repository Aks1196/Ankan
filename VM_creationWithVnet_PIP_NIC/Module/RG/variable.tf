variable "Angurwala_rg" {
  type = object({
    location = string
    name     = string
  })
}

variable "prefix" {
  type        = string
  description = "Prefix for the Resource Group name"
}