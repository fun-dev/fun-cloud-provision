terraform {
  backend "gcs" {
    bucket = "fcp-tf-state-dev"
    prefix = "terraform/state/dev/gke"
  }
}