variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "members" {
  description = "List of security team members"
  default     = []
  type = list(object({
    username = string
    role     = string
  }))
}
