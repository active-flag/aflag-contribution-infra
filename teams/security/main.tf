resource "github_team" "this" {
  name        = "security"
  description = "Security experts"
  privacy     = "closed"
}

resource "github_team_settings" "this" {
  team_id = github_team.this.id

  review_request_delegation {
    algorithm    = "ROUND_ROBIN"
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
