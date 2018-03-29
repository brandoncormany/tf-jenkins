resource "aws_vpc" "jenkins_vpc" {
    cidr_block = "${var.vpc_cidr_block}"
    enable_dns_support = true
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