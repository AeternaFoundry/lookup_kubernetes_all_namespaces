output "all_namespaces_lookup_id" {
  description = "Map of id values across all all_namespaces_lookup, keyed the same as var.all_namespaces_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_all_namespaces.all_namespaces_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "all_namespaces_lookup_namespaces" {
  description = "Map of namespaces values across all all_namespaces_lookup, keyed the same as var.all_namespaces_lookup except keys with no namespaces are omitted"
  value       = { for k, v in data.kubernetes_all_namespaces.all_namespaces_lookup : k => v.namespaces if v.namespaces != null && length(v.namespaces) > 0 }
}

