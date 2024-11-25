resource "github_repository" "this" {
  name = "${var.prefix}-contribution-infra"

  allow_auto_merge            = true
  allow_merge_commit          = true
  allow_rebase_merge          = true
  allow_squash_merge          = true
  allow_update_branch         = true
  archive_on_destroy          = true
  delete_branch_on_merge      = true
  description                 = "Contribution repository to manage github organization and configuration"
  has_discussions             = true
  has_downloads               = false
  has_issues                  = true
  has_projects                = true
  has_wiki                    = true
  web_commit_signoff_required = true
  vulnerability_alerts        = true

  ignore_vulnerability_alerts_during_read = false

  is_template = false
  archived    = false

  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}

resource "github_repository_dependabot_security_updates" "this" {
  repository = github_repository.this.id
  enabled    = true
}

data "github_team" "platform_team" {
  slug = "platform"
}

resource "github_repository_collaborators" "this" {
  repository = github_repository.this.id

  team {
    team_id    = data.github_team.platform_team.id
    permission = "maintain"
  }
}
