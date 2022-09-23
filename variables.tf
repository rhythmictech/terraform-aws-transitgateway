
variable "allow_external_principals" {
  default     = false
  description = "Allow resources to be shared outside of your AWS org"
  type        = bool
}

variable "amazon_side_asn" {
  description = "Amazon Side ASN"
  type        = number
}

variable "description" {
  description = "Description used in Transit Gateway"
  type        = string
}

variable "name" {
  default     = "tgw"
  description = "Name of transit gateway and related resources"
  type        = string
}

variable "resource_share_accounts" {
  default     = []
  description = "Accounts to share gateway with (leave blank for none)"
  type        = list(string)
}

variable "subnet_ids" {
  default     = []
  description = "Subnets to create transit gateway in (must use one subnet for every AZ you wish to use the tgw in)"
  type        = list(string)
}

variable "tags" {
  default     = {}
  description = "Tags to add to any resources that support it"
  type        = map(string)
}

variable "vpc_id" {
  description = "VPC to create transit gateway in"
  type        = string
}
