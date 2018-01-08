terraform {
 backend "gcs" {
   bucket  = "stf-terraform-admin"
   path    = "/staging/data-store/mysql.tfstate"
   project = "stf-terraform-admin"
 }
}
