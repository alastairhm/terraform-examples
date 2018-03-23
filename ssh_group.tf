resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "Allow inbound SSH traffic from my IP"
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags {
        Name = "Allow SSH"
    }
}
