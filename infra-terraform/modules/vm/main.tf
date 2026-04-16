/*
  Base VM module (reusable template)
  This is the ONLY place where VM definition exists
*/

resource "vsphere_virtual_machine" "vm" {
  name             = var.name
  resource_pool_id = var.resource_pool
  datastore_id     = var.datastore

  num_cpus = var.cpus
  memory   = var.memory

  guest_id = "ubuntu64Guest"

  network_interface {
    network_id = var.network
  }

  disk {
    label = "disk0"
    size  = var.disk_size
  }
}