module "mig1" {
  source            = "../../modules/terraform-google-managed-instance-group"
  project           = "${var.project}"
  network           = "${var.network}"
  subnetwork        = "${var.subnetwork}"
  region            = "${var.region}"
  zone              = "${var.zone}"
  name              = "web"
  size              = 2
  target_tags       = ["${var.network}-firewall-http"]
  target_pools      = ["${module.gce-lb-fr.target_pool}"]
  service_port      = 80
  service_port_name = "http"
  compute_image     = "apache-ubuntu16-sc1"
  startup_script    = "sudo systemctl start apache2 "
}
