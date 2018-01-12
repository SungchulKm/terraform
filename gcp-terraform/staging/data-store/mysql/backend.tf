terraform {
  backend "gcs" {
    bucket  = "stf-terraform-admin-new"
    path    = "/staging/data-store/mysql.tfstate"
    project = "gcp-architecture-191001"
  }
}
