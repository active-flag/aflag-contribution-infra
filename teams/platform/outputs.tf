output "team_id" {
  value       = github_team.this.id
  description = "Platform team ID"
}

output "repositories" {
  value       = module.repositories
  description = "Repositories created by the platform team"
}
