terraform {
  backend "gcs" {
    bucket  = "stf-terraform-admin-new"
    path    = "/prod/network/network.tfstate"
    project = "gcp-architecture-191001"
  }
}