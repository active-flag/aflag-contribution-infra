resource "github_organization_settings" "this" {
  has_organization_projects = true
  company                   = var.prefix
  billing_email             = var.billing_email
  name                      = var.prefix

  dependabot_alerts_enabled_for_new_repositories           = true
  dependabot_security_updates_enabled_for_new_repositories = true
  dependency_graph_enabled_for_new_repositories            = true

  members_can_create_internal_repositories = false
  members_can_create_pages                 = false
  members_can_create_public_pages          = false
  members_can_create_private_repositories  = false
  members_can_fork_private_repositories    = false
  members_can_create_private_pages         = false
  members_can_create_public_repositories   = false
  members_can_create_repositories          = false

  secret_scanning_enabled_for_new_repositories                 = true
  secret_scanning_push_protection_enabled_for_new_repositories = true
  advanced_security_enabled_for_new_repositories               = true
  has_repository_projects                                      = true

  default_repository_permission = "read"
}
