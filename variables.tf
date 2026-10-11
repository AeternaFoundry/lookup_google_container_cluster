variable "container_cluster_lookup" {
  description = <<EOT
Map of container_cluster_lookup, attributes below
Required:
    - name
Optional:
    - location
    - project
    - skip_node_pool_refresh
EOT

  type = map(object({
    name                   = string
    location               = optional(string)
    project                = optional(string)
    skip_node_pool_refresh = optional(bool)
  }))
}

