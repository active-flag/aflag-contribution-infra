terraform {
  required_version = ">= 1.9.5, < 2.0.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}
