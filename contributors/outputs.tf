output "contributors" {
  description = "List of contributors"
  value       = local.contributors
}

output "members" {
  description = "List of Organization members"
  value       = [for member in github_membership.this : member.username]
}
