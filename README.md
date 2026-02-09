# Secure Linux Infrastructure with Cloud-Oriented Network Design

# Project Overview
This project demonstrates hands-on experience in building and securing a Linux-based infrastructure using virtual machines.  
The environment simulates a real-world IT infrastructure setup and maps it to cloud networking concepts inspired by Google Cloud Platform (GCP).

This project focuses on **IT Infrastructure fundamentals**, including Linux system administration, networking, security hardening, and cloud architecture awareness.

---

# Objectives:
- Deploy multiple Linux virtual machines
- Configure private network communication between servers
- Implement basic firewall and SSH security hardening
- Simulate real infrastructure roles (web server & admin server)
- Map on-premise infrastructure design to cloud architecture (GCP-style)

---

# Architecture

# Local Infrastructure (VirtualBox)
![Local Infrastructure Diagram](diagrams/local_infra.png)

**Components:**
- **VM 1 – Web Server**
  - Ubuntu Server 22.04 LTS
  - Nginx (HTTP)
  - SSH access
- **VM 2 – Admin / Monitoring**
  - Ubuntu Server 22.04 LTS
  - SSH only
- **Private Network**
  - Internal VM-to-VM communication

---

# Cloud Mapping (GCP-Style)
![Cloud Mapping Diagram](diagrams/cloud_mapping.png)

**Cloud Concept Mapping:**
- VPC: `10.0.0.0/16`
- Subnet: `10.0.1.0/24`
- Firewall rules for HTTP (80) and SSH (22)
- Public and private IP separation

---

# Environment & Tools

# Environment
- Host OS: Windows / Linux / macOS
- Virtualization: VirtualBox
- VM OS: Ubuntu Server 22.04 LTS

# Tools & Technologies
- Linux (Ubuntu)
- VirtualBox
- Nginx
- UFW Firewall
- SSH
- Terraform (GCP – plan only)
- Draw.io (Architecture Diagram)

---

## 🖥️ Virtual Machine Details

| VM Name | Role | Network | Services |
|------|------|--------|---------|
| VM 1 | Web Server | Private (+ optional public) | Nginx, SSH |
| VM 2 | Admin / Monitoring | Private only | SSH |

---

## 🔧 Implementation Steps

### Day 1 – VM & Network Setup
- Created two Ubuntu Server virtual machines
- Configured private network between VMs
- Assigned static IP addresses
- Verified connectivity using ICMP (ping)

**Screenshots:**
- VirtualBox VM running status
- IP address configuration on each VM
- Ping test between VM 1 and VM 2

---

### Day 2 – Web Server & Firewall Configuration
- Installed and configured Nginx on the web server
- Enabled and configured UFW firewall
- Allowed only required ports (22, 80)
- Verified web access and SSH connectivity

---

### Day 3 – Cloud Mapping & Terraform
- Designed cloud architecture equivalent of the local infrastructure
- Created Terraform configuration (plan only)
- Validated resources using `terraform plan`

---

## 🔐 Security Configuration
- SSH key-based authentication
- Root SSH login disabled
- Firewall rules applied using least-privilege principle
- No unnecessary ports exposed

---

## 🖼️ Screenshots

Screenshots are organized by day inside the `screenshots/` directory.

Example structure:
