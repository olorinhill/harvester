resource "harvester_image" "ubuntu-jammy" {
  name      = var.ubuntu_image_name
  namespace = "default"

  display_name = var.ubuntu_image_name
  source_type  = "download"
  url          = var.ubuntu_image_url
}