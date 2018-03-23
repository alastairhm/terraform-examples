resource "aws_security_group" "allow_ssh" {
    name = "allow_all"
    description = "Allow inbound SSH traffic from my IP"
    vpc_id = "VPC-ID"
    
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
