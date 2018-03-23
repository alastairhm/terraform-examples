resource "aws_security_group" "allow_http" {
    name = "allow_http"
    description = "Allow inbound HTTP traffic from my IP"
    
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags {
        Name = "Allow HTTP"
    }
}
