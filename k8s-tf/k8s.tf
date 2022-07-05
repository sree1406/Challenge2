
resource "digitalocean_kubernetes_cluster" "k8s" {
  name   = var.name
  region = var.region
  version = "1.22.8-do.1"

  node_pool {
    name = "${var.name}-node-pool"
    size = var.size
    #auto_scale = true
    #min_nodes  = 1
    #max_nodes  = 3
    node_count = 2
  }
}
