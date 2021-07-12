variable "node_private_ips" {
default = {
  "node1" = {
    "az" = "eu-west-1a"
    "fqdn" = "vadc-ext-pres-node1.ccoe-ch.aws-eu-west-1.dev.williamhill.plc"
    "ip" = "100.77.254.5"
  }
  "node2" = {
    "az" = "eu-west-1b"
    "fqdn" = "vadc-ext-pres-node2.ccoe-ch.aws-eu-west-1.dev.williamhill.plc"
    "ip" = "100.77.254.69"
  }
  "node3" = {
    "az" = "eu-west-1c"
    "fqdn" = "vadc-ext-pres-node3.ccoe-ch.aws-eu-west-1.dev.williamhill.plc"
    "ip" = "100.77.254.133"
  }
}
}

output "maps" {
    value = var.node_private_ips
}

output "values" {
    value = values(var.node_private_ips)
}

output "ips" {
    value = [for value in values(var.node_private_ips): value["ip"]]
}