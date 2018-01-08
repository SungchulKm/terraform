
variable "project" {
  default = "stf-terraform-admin"
}

variable "network" {
  default = "multinode-vpc"
}


variable "region" {
  default = "us-west1"
}

variable zone {
  default = "us-west1-b"
}

variable subnetwork {
  description = "The subnetwork to deploy to"
  default     = "multinode-vpc-subnetwork-us-west1"
}

variable "subnetwork-region" {
  default = "us-west1"
}

variable "name" {
  description = "mysql name"
  default     = "mysql-1"
}

variable "vm_type" {
  default {
    "512gig"     = "f1-micro"
    "1point7gig" = "g1-small"
    "7point5gig" = "n1-standard-2"
  }
}

variable "os" {
  default {
    "centos7"         = "centos-7-v20170816"
    "debian9"         = "debian-9-stretch-v20170816"
    "ubuntu-1604-lts" = "ubuntu-1604-xenial-v20170815a"
    "ubuntu-1704"     = "ubuntu-1704-zesty-v20170811"
  }
}