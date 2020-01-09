variable "description" {
  type = string
}

variable "amazon_side_asn" {
  type = number
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "vpc_id" {
  type = string
}

variable "resource_share_accounts" {
  type    = list(string)
  default = []
}

variable "tags" {
  default = {}
  type    = map(string)
}

variable "region" {
  type = string
}

variable "name" {
  default = "vpc"
  type    = string
}
