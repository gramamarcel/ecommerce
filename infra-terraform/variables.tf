/*
  Variables used for infrastructure customization
*/

variable "environment" {
  default = "dev"
}

variable "project" {
  default = "ecommerce-devops-platform"
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
  sensitive = true
}

variable "vsphere_server" {
  type = string
}