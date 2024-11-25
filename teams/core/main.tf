resource "github_team" "this" {
  name        = "core"
  description = "Core configurations and components"
  privacy     = "closed"
}

resource "github_team_settings" "this" {
  team_id = github_team.this.id

  review_request_delegation {
    algorithm    = "LOAD_BALANCE"
    member_count = 2
    notify       = true
  }
}

resource "github_team_members" "this" {
  team_id = github_team.this.id

  dynamic "members" {
    for_each = var.members

    content {
      role     = members.value.role
      username = members.value.username
    }
  }
}
