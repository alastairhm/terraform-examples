provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "haggisVM1" {
  ami           = "ami-0d1102f48ad604cbe"
  instance_type = "t2.micro"
  key_name = "aws_id_rsa.pub"
  tags {
    Name = "haggisVM1"
  }
}

