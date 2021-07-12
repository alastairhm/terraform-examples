

variable "dnsIpAddresses" {
  type = list(string)
  default = [
    "10.112.208.11",
    "10.120.193.235",
  ]
}

output "encoded" {
  value = jsonencode(var.dnsIpAddresses)
}
