data "google_container_cluster" "container_cluster_lookup" {
  for_each = var.container_cluster_lookup

  name                   = each.value.name
  location               = each.value.location
  project                = each.value.project
  skip_node_pool_refresh = each.value.skip_node_pool_refresh
}

