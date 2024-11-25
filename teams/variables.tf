variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "contributors" {
  description = "List of contributors with team settings"
  default     = []
  type = list(object(
    {
      username = string
      teams = list(object({
        name = string
        role = string
      }))
    }
  ))
}
