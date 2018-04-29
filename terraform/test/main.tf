
###############################################################################
# variables
###############################################################################
variable "region" {}
variable "env" {}
variable "key_path" {}
variable "key_name" {}
variable "state_bucket" {}

variable "cred-file" {
  default = "~/.aws/credentials"
}

variable "namespace" {
  default = "privatenamespace"
}
variable "name" {
  default = "testkey"
}

###############################################################################
# RESOURCES
###############################################################################
terraform {
  backend "s3" {
    encrypt = true
    acl     = "private"
  }
}

provider "aws" {
  region                   = "${var.region}"
  shared_credentials_file  = "${var.cred-file}"
  profile                  = "${var.env}"
}


