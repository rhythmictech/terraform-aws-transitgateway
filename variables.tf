
variable "amazon_side_asn" {
  type        = number
  description = "Amazon Side ASN"
}

variable "description" {
  type        = string
  description = "Description used in Transit Gateway"
}

variable "name" {
  type        = string
  default     = "vpc"
  description = "Name of transit gateway and related resources"
}

variable "resource_share_accounts" {
  type        = list(string)
  default     = []
  description = "Accounts to share gateway with (leave blank for none)"
}

variable "subnet_ids" {
  type        = list(string)
  default     = []
  description = "Subnets to create transit gateway in (must use one subnet for every AZ you wish to use the tgw in)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to add to any resources that support it"
}

variable "vpc_id" {
  type        = string
  description = "VPC to create transit gateway in"
}
