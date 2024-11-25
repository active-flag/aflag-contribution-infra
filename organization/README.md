<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.5, < 2.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_email"></a> [billing\_email](#input\_billing\_email) | Github Billing email address | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Resource prefixes | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organization_settings"></a> [organization\_settings](#output\_organization\_settings) | Organization settings output |
<!-- END_TF_DOCS -->