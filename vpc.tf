resource "aws_vpc" "jenkins_vpc" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "managementVPC"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.jenkins_vpc.id}"

  tags {
    Name = "managementIGW"
  }
}

resource "aws_default_security_group" "default" {
  vpc_id = "${aws_vpc.jenkins_vpc.id}"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
