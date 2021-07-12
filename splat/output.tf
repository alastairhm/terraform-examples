variable my_list {
  type = list(string)
  default = ["one","two","three"]
}

output my_list {
  value = var.my_list[*]
}
