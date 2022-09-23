resource "aws_ec2_transit_gateway" "tgw" {
  amazon_side_asn = var.amazon_side_asn
  description     = var.description
  tags = merge(var.tags, {
    "Name" = var.name
  })
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attach" {
  subnet_ids         = var.subnet_ids
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = var.vpc_id
}

resource "aws_ram_resource_share" "tgw_share" {
  count                     = length(var.resource_share_accounts) > 0 ? 1 : 0
  name                      = "${var.name}-tgw-share"
  allow_external_principals = var.allow_external_principals
  tags                      = var.tags
}

resource "aws_ram_principal_association" "tgw_ram_principal" {
  count              = length(var.resource_share_accounts)
  principal          = var.resource_share_accounts[count.index]
  resource_share_arn = aws_ram_resource_share.tgw_share[0].arn
}

resource "aws_ram_resource_association" "tgw_ram_resource" {
  count              = length(var.resource_share_accounts) > 0 ? 1 : 0
  resource_arn       = aws_ec2_transit_gateway.tgw.arn
  resource_share_arn = aws_ram_resource_share.tgw_share[0].arn
}
