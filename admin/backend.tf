terraform {
 backend "gcs" {
   bucket  = "stf-terraform-admin"
   path    = "/terraform.tfstate"
   project = "stf-terraform-admin"
 }
}
