variable zone {
  default = "us-central1-a"
}

provider google {
  region = "${var.region}"
}

module "gce-lb-fr" {
  source  = "../../modules/terraform-google-lb"
  project = "${var.project}"
  region  = "${var.region}"
  network = "${var.network}"

  name         = "external-lb"
  service_port = "${module.mig1.service_port}"
  target_tags  = ["${module.mig1.target_tags}"]
}
