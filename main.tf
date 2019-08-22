resource "aws_ec2_transit_gateway" "tgw" {
  description       = var.description
  amazon_side_asn   = var.amazon_side_asn
  tags              = merge(local.base_tags, var.additional_tags)
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attach" {
  subnet_ids         = var.subnet_ids
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = module.vpc.vpc_id
}

resource "aws_ram_resource_share" "tgw_share" {
  name                      = "${var.name}-tgw-share"
  allow_external_principals = false
  tags                      = merge(local.base_tags, var.additional_tags)
}

resource "aws_ram_principal_association" "tgw_ram_principal" {
  count              = length(var.resource_share_accounts)
  principal          = var.resource_share_accounts[count.index]
  resource_share_arn = aws_ram_resource_share.tgw_share.arn
}

resource "aws_ram_resource_association" "tgw_ram_resource" {
  resource_arn       = aws_ec2_transit_gateway.tgw.arn
  resource_share_arn = aws_ram_resource_share.tgw_share.arn
}
