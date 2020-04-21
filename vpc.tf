resource "aws_vpc" "webapp-vpc" {
  cidr_block           = "172.31.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "webapp-vpc"
  }
}

resource "aws_internet_gateway" "webapp-igw" {
  vpc_id = "${aws_vpc.webapp-vpc.id}"

  tags = {
    Name = "webapp-igw"
  }
}
