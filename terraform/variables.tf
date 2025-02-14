variable "project" {
  description = "Project ID"
}

variable "region" {
  description = "Region"
}

variable "zone" {
  description = "Zone"
}

variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}

variable "disk_image" {
  description = "Disk image"
}

/*

Values of variables defined in a terraform.tfvars file

project          = "commit-lab-1"
region           = "us-central1"
zone             = "us-central1-a"
public_key_path  = "~/.ssh/appuser.pub"
private_key_path = "~/.ssh/appuser"
disk_image       = "reddit-base"

*/