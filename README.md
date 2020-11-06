# Gitlab S3 Cache module

Naive module creating shared S3 bucket for gitlab cache and IAM user with right to control
that bucket.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.1 |
| local | >= 1.2 |
| template | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.1 |

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
| cache\_bucket\_arn | Arn of the created gitlab cache bucket |
| cache\_iam\_user | Arn of the created iam user with rights to manage cache bucket |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
