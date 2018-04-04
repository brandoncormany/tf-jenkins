variable "vpc_cidr_block" {
  default = "10.255.0.0/16"
}

variable "region" {
  default = "us-west-2"
}

variable "ecs_ami" {
  type = "map"

  default = {
    "us-east-2"      = "ami-1b90a67e"
    "us-east-1"      = "ami-cb17d8b6"
    "us-west-2"      = "ami-05b5277d"
    "us-west-1"      = "ami-9cbbaffc"
    "eu-west-2"      = "ami-a48d6bc3"
    "eu-west-3"      = "ami-914afcec"
    "eu-west-1"      = "ami-bfb5fec6"
    "eu-central-1"   = "ami-ac055447"
    "ap-northeast-2" = "ami-ba74d8d4"
    "ap-northeast-1" = "ami-5add893c"
    "ap-southeast-2" = "ami-4cc5072e"
    "ap-southeast-1" = "ami-acbcefd0"
    "ca-central-1"   = "ami-a535b2c1"
    "ap-south-1"     = "ami-2149114e"
    "sa-east-1"      = "ami-d3bce9bf"
  }
}
