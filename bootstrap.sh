#!/bin/bash

set -e

echo "======================================"
echo " DEVOPS PLATFORM BOOTSTRAP START"
echo "======================================"

# ----------------------------
# 1. TERRAFORM
# ----------------------------
echo "[1/3] Starting Terraform..."

cd infra-terraform

terraform init
terraform apply -auto-approve

cd ..

echo "[OK] Terraform completed."

# ----------------------------
# 2. WAIT FOR VMs
# ----------------------------
echo "[2/3] Waiting for infrastructure to boot..."
sleep 60

# ----------------------------
# 3. ANSIBLE
# ----------------------------
echo "[3/3] Running Ansible provisioning..."

cd infra-ansible

ansible-playbook -i inventory/hosts.yml playbooks/site.yml

cd ..

# ----------------------------
# DONE
# ----------------------------

echo "======================================"
echo " PLATFORM IS READY"
echo "======================================"

echo "App (LB):      http://192.168.56.30"
echo "App1:          http://192.168.56.10"
echo "App2:          http://192.168.56.11"
echo "Jenkins:       http://192.168.56.40:8080"
echo "Nexus:         http://192.168.56.60:8081"
echo "SonarQube:     http://192.168.56.50:9000"
echo "Monitoring:    http://192.168.56.99:3000 / :9090"

echo "======================================"
echo " DONE SUCCESSFULLY"
echo "======================================"