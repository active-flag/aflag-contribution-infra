locals {
  contributors = [
    {
      name     = "Zurab Siprashvili"
      username = "ZzurabSiprashvili"
      email    = "zz.siprashvili@gmail.com"
      role     = "admin",
      teams = [
        {
          role = "maintainer",
          name = "core"
          }, {
          role = "maintainer",
          name = "security"
          }, {
          role = "maintainer",
          name = "platform"
        }
      ]
    }
  ]
}

resource "github_membership" "this" {
  for_each = { for contributor in local.contributors : contributor.username => {
    username = contributor.username
    role     = contributor.role
  } }

  username = each.value.username
  role     = each.value.role
}
