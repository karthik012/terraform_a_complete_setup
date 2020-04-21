resource "aws_route_table" "webapp-rt" {
  vpc_id = "${aws_vpc.webapp-vpc.id}"

  route {
    cidr_block = "172.31.0.0/16"
    gateway_id = "${aws_internet_gateway.webapp-igw.id}"
  }

  route {
    ipv6_cidr_block        = "0.0.0.0/0"
    egress_only_gateway_id = "${aws_internet_gateway.webapp-igw.id}"
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = "${aws_internet_gateway.webapp-igw.id}"
  }

  tags = {
    Name = "main"
  }
}

resource "aws_route_table_association" "web-1a-rt" {
  subnet_id      = "${aws_subnet.web-1a.id}"
  route_table_id = "${aws_route_table.webapp-rt.id}"
}

resource "aws_route_table_association" "web-1b-rt" {
  subnet_id      = "${aws_subnet.web-1b.id}"
  route_table_id = "${aws_route_table.webapp-rt.id}"
}

resource "aws_route_table_association" "app-1a-rt" {
  subnet_id      = "${aws_subnet.app-1a.id}"
  route_table_id = "${aws_route_table.webapp-rt.id}"
}

resource "aws_route_table_association" "app-1b-rt" {
  subnet_id      = "${aws_subnet.app-1b.id}"
  route_table_id = "${aws_route_table.webapp-rt.id}"
}
