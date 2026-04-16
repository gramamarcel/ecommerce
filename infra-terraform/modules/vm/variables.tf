variable "name" {}
variable "cpus" {}
variable "memory" {}
variable "ip" {} 
variable "disk_size" {
  default = 20
}
variable "network" {}
variable "datastore" {}
variable "resource_pool" {}