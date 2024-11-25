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
| <a name="module_core"></a> [core](#module\_core) | ./core | n/a |
| <a name="module_platform"></a> [platform](#module\_platform) | ./platform | n/a |
| <a name="module_security"></a> [security](#module\_security) | ./security | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_contributors"></a> [contributors](#input\_contributors) | List of contributors with team settings | <pre>list(object(<br>    {<br>      username = string<br>      teams = list(object({<br>        name = string<br>        role = string<br>      }))<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_core"></a> [core](#output\_core) | Core team |
| <a name="output_platform"></a> [platform](#output\_platform) | Platform team |
| <a name="output_security"></a> [security](#output\_security) | Security team |
<!-- END_TF_DOCS -->