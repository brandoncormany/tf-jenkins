resource "aws_subnet" "publicA" {
  vpc_id = "${aws_vpc.jenkins_vpc.id}"
  cidr_block = "10.255.1.0/24"

  tags {
    Name = "PubicA"
  }
}

resource "aws_subnet" "publicB" {
  vpc_id = "${aws_vpc.jenkins_vpc.id}"
  cidr_block = "10.255.2.0/24"

  tags {
    Name = "PubicB"
  }
}

resource "aws_subnet" "publicC" {
  vpc_id = "${aws_vpc.jenkins_vpc.id}"
  cidr_block = "10.255.3.0/24"

  tags {
    Name = "PubicC"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.publicA.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}

resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.publicB.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}

resource "aws_route_table_association" "c" {
  subnet_id      = "${aws_subnet.publicC.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}
