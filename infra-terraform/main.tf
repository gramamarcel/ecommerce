# =========================
# APP SERVERS
# =========================

module "app1" {
  source = "./modules/vm"

  name          = "app1"
  ip            = "192.168.56.10"
  cpus          = 1
  memory        = 1024
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

module "app2" {
  source = "./modules/vm"

  name          = "app2"
  ip            = "192.168.56.11"
  cpus          = 1
  memory        = 1024
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# DATABASE SERVER
# =========================

module "db" {
  source = "./modules/vm"

  name          = "db"
  ip            = "192.168.56.20"
  cpus          = 1
  memory        = 2048
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# LOAD BALANCER
# =========================

module "lb" {
  source = "./modules/vm"

  name          = "lb"
  ip            = "192.168.56.30"
  cpus          = 1
  memory        = 512
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# CI / JENKINS
# =========================

module "ci" {
  source = "./modules/vm"

  name          = "ci"
  ip            = "192.168.56.40"
  cpus          = 2
  memory        = 2048
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# SONARQUBE
# =========================

module "sonar" {
  source = "./modules/vm"

  name          = "sonar"
  ip            = "192.168.56.50"
  cpus          = 2
  memory        = 2048
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# NEXUS
# =========================

module "nexus" {
  source = "./modules/vm"

  name          = "nexus"
  ip            = "192.168.56.60"
  cpus          = 2
  memory        = 2048
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# REDIS
# =========================

module "redis" {
  source = "./modules/vm"

  name          = "redis"
  ip            = "192.168.56.21"
  cpus          = 1
  memory        = 512
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}

# =========================
# MONITORING (PROMETHEUS + GRAFANA VM)
# =========================

module "monitoring" {
  source = "./modules/vm"

  name          = "monitoring"
  ip            = "192.168.56.99"
  cpus          = 1
  memory        = 1024
  network       = "VM Network"
  datastore     = "datastore1"
  resource_pool = "Resources"
}