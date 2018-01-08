variable zone {
  default = "us-west1-b"
}


provider google {
  region = "${var.region}"
}

module "gce-lb-fr" {
  source       = "../../../modules/terraform-google-lb"
  project       = "${var.project}"
  region       = "${var.region}"
  network      = "${var.network}"
  
  name         = "external-lb"
  service_port = "${module.mig1.service_port}"
  target_tags  = ["${module.mig1.target_tags}"]
}

module "gce-ilb" {
  source      = "../../../modules/terraform-google-lb-internal"
  project       = "${var.project}"
  region      = "${var.region}"
  name        = "was-internal-lb"
  network      = "${var.network}"
  network_project = "${var.project}"
  ports       = ["${module.mig2.service_port}"]
  health_port = "${module.mig2.service_port}"
  source_tags = ["${module.mig1.target_tags}"]
  target_tags = ["${module.mig2.target_tags}"]

  backends = [
    {
      group = "${module.mig2.instance_group}"
    }
  ]
}