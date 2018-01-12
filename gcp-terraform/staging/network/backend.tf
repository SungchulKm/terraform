terraform {
  backend "gcs" {
    bucket  = "stf-terraform-admin-new"
    path    = "/staging/network/network.tfstate"
    project = "gcp-architecture-191001"
  }
}