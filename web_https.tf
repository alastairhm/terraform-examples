resource "aws_security_group" "allow_https" {
    name = "allow_https"
    description = "Allow inbound HTTPS traffic from my IP"
    
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags {
        Name = "Allow HTTPS"
    }
}
