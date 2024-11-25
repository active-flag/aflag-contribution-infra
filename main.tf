module "organization" {
  source = "./organization"

  billing_email = var.github_billing_email
  prefix        = var.prefix
}

module "contributors" {
  source = "./contributors"
}

module "teams" {
  source = "./teams"

  prefix = var.prefix

  contributors = [for contributor in module.contributors.contributors : {
    username = contributor.username
    teams = [for team in contributor.teams : {
      name = team.name
      role = team.role
    }]
  }]
}
