resource "aws_instance" "web1" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  subnet_id                   = "${aws_subnet.web-1a.id}"
  private_ip                  = "172.31.1.21"
  associate_public_ip_address = true
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "web1"
  }
}

resource "aws_instance" "web2" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  subnet_id                   = "${aws_subnet.web-1b.id}"
  associate_public_ip_address = true
  private_ip                  = "172.31.2.22"
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "web2"
  }
}

resource "aws_instance" "web3" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.web-1b.id}"
  private_ip                  = "172.31.2.23"
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "web3"
  }
}

resource "aws_instance" "app1" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.app-1a.id}"
  private_ip                  = "172.31.101.21"
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "app1"
  }
}

resource "aws_instance" "app2" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.app-1b.id}"
  private_ip                  = "172.31.102.21"
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "app2"
  }
}

resource "aws_instance" "app3" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.app-1b.id}"
  private_ip                  = "172.31.102.23"
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "app3"
  }
}

resource "aws_instance" "db" {
  ami                         = "ami-04169656fea786776"
  instance_type               = "t2.nano"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.app-1a.id}"
  private_ip                  = "172.31.101.99"
  key_name                    = "petrichorkeypair"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "db"
  }
}
