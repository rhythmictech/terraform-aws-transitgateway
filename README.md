# terraform-aws-transitgateway

Manage a [Transit Gateway](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-transit-gateway.html). Supports using Resource Access Manager to share a Transit Gateway across multiple accounts.

```
module "tgw" {
  source             = "git::https://github.com/rhythmictech/terraform-aws-transitgateway"
  amazon_side_asn    = 65400
  description        = "example"
  subnet_ids         = module.vpc.private_subnets
  vpc_id             = module.vpc.vpc_id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| amazon\_side\_asn | Amazon Side ASN | number | n/a | yes |
| description | Description used in Transit Gateway | string | n/a | yes |
| name | Name of transit gateway and related resources | string | `"tgw"` | no |
| resource\_share\_accounts | Accounts to share gateway with \(leave blank for none\) | list(string) | `[]` | no |
| subnet\_ids | Subnets to create transit gateway in \(must use one subnet for every AZ you wish to use the tgw in\) | list(string) | `[]` | no |
| tags | Tags to add to any resources that support it | map(string) | `{}` | no |
| vpc\_id | VPC to create transit gateway in | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| transit\_gateway | Transit Gateway Resource |
| transit\_gateway\_id | ID of Transit Gateway |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Transit Gateway Route CIDR](https://github.com/rhythmictech/terraform-aws-transitgateway-route-cidr)
