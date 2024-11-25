locals {
  contributors = flatten([
    for contributor in var.contributors : [
      for team in contributor.teams : {
        username = contributor.username
        role     = team.role
        team     = team.name
      }
    ]
  ])
}

module "core" {
  source = "./core"

  prefix = var.prefix

  members = [
    for contributor in local.contributors : {
      role     = contributor.role
      username = contributor.username
    } if contributor.team == "core"
  ]
}

module "platform" {
  source = "./platform"

  prefix = var.prefix

  members = [
    for contributor in local.contributors : {
      role     = contributor.role
      username = contributor.username
    } if contributor.team == "platform"
  ]
}

module "security" {
  source = "./security"

  prefix = var.prefix

  members = [
    for contributor in local.contributors : {
      role     = contributor.role
      username = contributor.username
    } if contributor.team == "security"
  ]
}
