resource "aws_subnet" "web-1a" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.31.1.0/24"
  vpc_id            = "${aws_vpc.webapp-vpc.id}"

  tags = {
    Name = "web-1a"
  }
}

resource "aws_subnet" "web-1b" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.31.2.0/24"
  vpc_id            = "${aws_vpc.webapp-vpc.id}"

  tags = {
    Name = "web-1b"
  }
}

resource "aws_subnet" "app-1a" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.31.101.0/24"
  vpc_id            = "${aws_vpc.webapp-vpc.id}"

  tags = {
    Name = "app-1a"
  }
}

resource "aws_subnet" "app-1b" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.31.102.0/24"
  vpc_id            = "${aws_vpc.webapp-vpc.id}"

  tags = {
    Name = "app-1b"
  }
}
