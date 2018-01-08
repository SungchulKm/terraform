terraform {
 backend "gcs" {
   bucket  = "stf-terraform-admin"
   path    = "/staging/service/front-end_1.tfstate"
   project = "stf-terraform-admin"
 }
}
