variable "ubuntu_image_name" {
  type = string
}

# https://cloud-images.ubuntu.com/
variable "ubuntu_image_url" {
  type = string
}

variable "docker_vm_cpu" {
  type = number
}

variable "docker_vm_memory" {
  type = string
}

variable "docker_vm_disk_size" {
  type = string
}

variable "docker_vm_name" {
  type = string
}

variable "docker_vm_namespace" {
  type = string
}