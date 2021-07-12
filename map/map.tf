locals {
    env_map = map("dev", "dv", "nonprod", "np", "prod", "pr")
    reg_map = map("eu-north-1" , "en1", "eu-west-3"  , "ew3", "eu-west-2"  , "ew2", "eu-west-1"  , "ew1", "us-east-1"  , "ue1", "us-east-2"  , "ue2", "us-west-1"  , "uw1" ,"us-west-2"  , "uw2")
    resolver = "\"rslvr-rr-2e5da56ca41c4c088\""

    domain_names = list("original.com","new.com")

    full_list = [for option_map in var.dhcp_options_list : merge(option_map,{dhcp_options_domain_name = local.domain_names[index(var.dhcp_options_list,option_map)]})]
}

variable "dhcp_options_list" {
  description = "DHCP options list"
  type = list
  default = [
    {
      dhcp_options_domain_name_servers = "1"
      dhcp_options_ntp_servers = ""
      dhcp_options_netbios_name_servers = ""
      dhcp_options_netbios_node_type = ""
    },
    {
      dhcp_options_domain_name_servers = "2"
      dhcp_options_ntp_servers = ""
      dhcp_options_netbios_name_servers = ""
      dhcp_options_netbios_node_type = ""
    }
  ]
}

output "map_list" {
  value = var.dhcp_options_list
}

output "map_list_full" {
  value = local.full_list
}


output "resolver" {
  value = replace(local.resolver,"\"","")
}

output "env_map" {
    value = local.env_map
}

output "reg_map" {
    value = local.reg_map
}

output "dev" {
    value = lookup(local.env_map,"dev","null")
}
output "nonprod" {
    value = lookup(local.env_map,"nonprod","null")
}
output "prod" {
    value = lookup(local.env_map,"prod","null")
}

output "london" {
    value = lookup(local.reg_map,"eu-west-2","null")
}
