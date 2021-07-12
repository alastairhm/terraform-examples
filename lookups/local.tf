data "aws_subnet_ids" "private_subnet_ids" {
  vpc_id = "vpc-04dea246b7939254a"
  filter {
    name   = "tag:Name"
    values = ["*default-vpc-private*"]
  }

  filter {
    name   = "tag:williamhill:role"
    values = ["primary"]
  }
}

output "subnets" {
  value = data.aws_subnet_ids.private_subnet_ids
}

