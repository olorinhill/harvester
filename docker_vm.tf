resource "harvester_virtualmachine" "docker_vm" {
  name      = var.docker_vm_name
  namespace = var.docker_vm_namespace

  description = "Docker VM"
  tags = {
    ssh-user = "ubuntu"
  }

  cpu    = var.docker_vm_cpu
  memory = var.docker_vm_memory

  efi         = true
  secure_boot = false

  network_interface {
    name         = "nic-1"
    network_name = data.harvester_network.secure.id
  }

  disk {
    name        = "disk-0"
    type        = "disk"
    size        = var.docker_vm_disk_size
    bus         = "virtio"
    boot_order  = 1
    image       = harvester_image.ubuntu-jammy.id
    auto_delete = true
  }

  cloudinit {
    user_data_secret_name = data.harvester_cloudinit_secret.cloud-config-ubuntu20.name
  }
}