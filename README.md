<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.5, < 2.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_contributors"></a> [contributors](#module\_contributors) | ./contributors | n/a |
| <a name="module_organization"></a> [organization](#module\_organization) | ./organization | n/a |
| <a name="module_teams"></a> [teams](#module\_teams) | ./teams | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_billing_email"></a> [github\_billing\_email](#input\_github\_billing\_email) | Github Billing email address | `string` | n/a | yes |
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | GitHub organization or user that owns the repositories | `string` | n/a | yes |
| <a name="input_github_pat"></a> [github\_pat](#input\_github\_pat) | GitHub PAT | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Resource prefixes | `string` | `"aflag"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_contributors"></a> [contributors](#output\_contributors) | List of contributors |
| <a name="output_members"></a> [members](#output\_members) | List of github organization members |
| <a name="output_organization"></a> [organization](#output\_organization) | Github organization |
| <a name="output_teams"></a> [teams](#output\_teams) | List of teams |
<!-- END_TF_DOCS -->