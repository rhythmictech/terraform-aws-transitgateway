locals {
  base_tags = {
    env       = var.env
    owner     = var.owner
    namespace = var.namespace
  }
}

variable "description" {
  type = string
}

variable "amazon_side_asn" {
  type = number
}

variable "subnet_ids" {
  type = list(string)
  default = []
}

variable "vpc_id" {
  type = string
}

variable "resource_share_accounts" {
  type = list(string)
  default = []
}

variable "additional_tags" {
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

variable "namespace" {
  type = string
}

variable "env" {
  type = string
}

variable "owner" {
  type = string
}
