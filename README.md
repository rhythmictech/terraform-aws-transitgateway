# terraform-aws-transitgateway
[![](https://github.com/rhythmictech/terraform-aws-transitgateway/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-transitgateway/actions)

Manage a Transit Gateway resource. Supports RAM.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| amazon\_side\_asn | Amazon Side ASN | number | n/a | yes |
| description | Description used in Transit Gateway | string | n/a | yes |
| name | Name of transit gateway and related resources | string | `"vpc"` | no |
| resource\_share\_accounts | Accounts to share gateway with \(leave blank for none\) | list(string) | `[]` | no |
| subnet\_ids | Subnets to create transit gateway in \(must use one subnet for every AZ you wish to use the tgw in\) | list(string) | `[]` | no |
| tags | Tags to add to any resources that support it | map(string) | `{}` | no |
| vpc\_id | VPC to create transit gateway in | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| transit\_gateway\_id |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
