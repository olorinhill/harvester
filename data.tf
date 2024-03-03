data "harvester_network" "secure" {
  name      = "secure"
  namespace = "default"
}

data "harvester_cloudinit_secret" "cloud-config-ubuntu20" {
  name      = "default-ubuntu-cloud-init"
  namespace = "default"
}