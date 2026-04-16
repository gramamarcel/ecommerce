/*
  App servers (app1, app2)
  Uses base VM module
*/

module "app1" {
  source = "../vm"

  name   = "app1"
  cpus   = 1
  memory = 1024
}

module "app2" {
  source = "../vm"

  name   = "app2"
  cpus   = 1
  memory = 1024
}