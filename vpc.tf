provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

variable "access_key" {}
variable "secret_key" {}
variable "key_name" {}
variable "ssh_key_file" {}
variable "region" {}

resource "aws_vpc" "operations" {
  cidr_block = "10.0.0.0/16" 
  enable_dns_hostnames = true
  tags {
    Name = "Operations VPC"
  }
}
