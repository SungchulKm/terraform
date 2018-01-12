variable "region" {
  default = "us-central1" 
}

variable "project-name" {
  default = "gcp-architecture-191001"
}

variable "network" {
  default = "devops-vpc"
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