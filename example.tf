provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "haggisVM1" {
  ami           = "ami-0d1102f48ad604cbe"
  instance_type = "t2.micro"
  key_name      = "aws_id_rsa.pub"
#  security_groups = ["${aws_security_group.allow_ssh.id}","${aws_security_group.allow_https.id}"]
  tags {
    Name = "haggisVM1"
  }
}

