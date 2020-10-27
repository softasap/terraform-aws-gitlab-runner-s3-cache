# Gitlab S3 Cache module

Naive module creating shared S3 bucket for gitlab cache and IAM user with right to control
that bucket.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | AWS region. | `string` | n/a | yes |
| cache\_expiration\_days | Number of days before cache objects expires. | `string` | `1` | no |
| environment | Project or namespace gitlab runners fleet is associated with | `string` | `"default"` | no |
| tags | List of tags to be associated | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| cache\_bucket\_arn | n/a |
| cache\_iam\_user | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
