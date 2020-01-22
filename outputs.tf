output "transit_gateway_id" {
  description = "ID of Transit Gateway"
  value       = aws_ec2_transit_gateway.tgw.id
}

output "transit_gateway" {
  description = "Transit Gateway Resource"
  value       = aws_ec2_transit_gateway.tgw
}
