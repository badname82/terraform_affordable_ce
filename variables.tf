variable "project" {
  description = "The ID of the Google Cloud project"
}

variable "credentials" {

}

variable "region-west" {
  default = "europe-southwest1"
}

variable "region-east" {
  default = "europe-west2"
}

variable "zone_west1" {
  default = "europe-southwest1-a"
}

variable "zone_east1" {
  default = "europe-west2-a"
}

variable "ip-cidr-range-west" {

  default = "10.10.0.0/24"
}

variable "ip-cidr-range-east" {

  default = "10.20.0.0/24"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "image" {
  default = "debian-cloud/debian-11"
}

variable "metadata_startup_script" {
  default = "./startup.sh"
}

