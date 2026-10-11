variable "all_namespaces_lookup" {
  description = <<EOT
Map of all_namespaces_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

