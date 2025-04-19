locals {
  compute-engines = {
    "compute-engine-esw" = { region = "europe-southwest1", zone = "europe-southwest1-a", subnet = google_compute_subnetwork.subnet-west1.name, machine_type = var.machine_type, image = "debian-cloud/debian-11", static_ip_name = "static-ip-west" },
    "compute-engine-ew"  = { region = "europe-west2", zone = "europe-west2-a", subnet = google_compute_subnetwork.subnet-east1.name, machine_type = var.machine_type, image = "debian-cloud/debian-11", static_ip_name = "static-ip-east" },
    "compute-engine-esw" = { region = "europe-southwest1", zone = "europe-southwest1-a", subnet = google_compute_subnetwork.subnet-west1.name, machine_type = var.machine_type, image = "debian-cloud/debian-11", static_ip_name = "static-ip-west1" }
  }
}

module "configured_compute_engine" {
  source                  = "./modules/afforadable-compute-engine"
  for_each                = local.compute-engines
  ce_name                 = "${each.key}-${terraform.workspace}"
  machine_type            = each.value.machine_type
  zone                    = each.value.zone
  image                   = each.value.image
  metadata_startup_script = var.metadata_startup_script
  vpc                     = google_compute_network.vpc.self_link
  static_ip_name          = each.value.static_ip_name
  region                  = each.value.region
  subnet                  = each.value.subnet

}





