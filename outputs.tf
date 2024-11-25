output "organization" {
  value       = module.organization
  description = "Github organization"
}

output "contributors" {
  value       = module.contributors.contributors
  description = "List of contributors"
}

output "members" {
  value       = module.contributors.members
  description = "List of github organization members"
}

output "teams" {
  value       = module.teams
  description = "List of teams"
}
