terraform {
  backend "gcs" {
    bucket  = "stf-terraform-admin-new"
    path    = "/prod/service/front-end.tfstate"
    project = "gcp-architecture-191001"
  }
}
