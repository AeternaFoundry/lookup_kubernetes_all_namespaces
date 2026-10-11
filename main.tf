data "kubernetes_all_namespaces" "all_namespaces_lookup" {
  for_each = var.all_namespaces_lookup

}

