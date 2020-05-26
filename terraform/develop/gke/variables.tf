variable "project" {
    default = "fun-cloud-platform"
}

variable "cluster_name" {
  default = "fcp-shared-cluster-dev"
}

variable "location" {
  default = "asia-northeast1-a"
}

variable "network" {
  default = "default"
}

variable "primary_node_count" {
  default = "3"
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "min_master_version" {
  default = "1.14.10-gke.36"
}

variable "node_version" {
  default = "1.14.10-gke.36"
}