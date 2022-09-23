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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.tgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.tgw_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |
| [aws_ram_principal_association.tgw_ram_principal](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_principal_association) | resource |
| [aws_ram_resource_association.tgw_ram_resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_association) | resource |
| [aws_ram_resource_share.tgw_share](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_share) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_external_principals"></a> [allow\_external\_principals](#input\_allow\_external\_principals) | Allow resources to be shared outside of your AWS org | `bool` | `false` | no |
| <a name="input_amazon_side_asn"></a> [amazon\_side\_asn](#input\_amazon\_side\_asn) | Amazon Side ASN | `number` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description used in Transit Gateway | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of transit gateway and related resources | `string` | `"tgw"` | no |
| <a name="input_resource_share_accounts"></a> [resource\_share\_accounts](#input\_resource\_share\_accounts) | Accounts to share gateway with (leave blank for none) | `list(string)` | `[]` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Subnets to create transit gateway in (must use one subnet for every AZ you wish to use the tgw in) | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to any resources that support it | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC to create transit gateway in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_transit_gateway"></a> [transit\_gateway](#output\_transit\_gateway) | Transit Gateway Resource |
| <a name="output_transit_gateway_id"></a> [transit\_gateway\_id](#output\_transit\_gateway\_id) | ID of Transit Gateway |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Transit Gateway Route CIDR](https://github.com/rhythmictech/terraform-aws-transitgateway-route-cidr)
