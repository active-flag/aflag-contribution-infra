variable "prefix" {
  description = "Resource prefixes"
  default     = "aflag"
  type        = string
}

variable "github_pat" {
  description = "GitHub PAT"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub organization or user that owns the repositories"
  type        = string
}

variable "github_billing_email" {
  description = "Github Billing email address"
  type        = string
}
