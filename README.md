# Secure Infrastructure Project (VirtualBox)

## Overview
This project demonstrates a basic secure infrastructure setup using Linux virtual machines on VirtualBox.  
The main focus is on **server setup, networking, firewall configuration, and SSH hardening**, as a foundation for cloud infrastructure concepts.

This project was built as part of my preparation for **IT Infrastructure / Cloud Engineer internship roles**.

---

## Goals
- Build a simple multi-VM Linux infrastructure
- Configure private networking between servers
- Apply basic firewall rules
- Harden SSH access
- Understand how on-prem infrastructure maps to cloud architecture

---

## Architecture
- **2 Ubuntu Server VMs**
  - Web Server
  - Admin Server
- **Network Configuration**
  - NAT Adapter (internet access)
  - Host-Only Adapter (private communication)
- **Security**
  - UFW firewall enabled
  - SSH access restricted

Architecture diagrams are available in the `diagrams/` folder.

---

## Tools & Technologies
- Ubuntu Server
- Oracle VirtualBox
- Linux networking (NAT & Host-Only)
- UFW Firewall
- OpenSSH
- Nginx (Web Server)
- Terraform (GCP design only)

---

## What Was Implemented

### Virtual Machine Setup
- Created two Ubuntu Server VMs
- Configured hostname and network interfaces
- Verified IP addresses and connectivity

### Networking
- NAT for outbound internet access
- Host-Only network for internal VM communication
- Connectivity tested using `ping`

### Firewall
- Enabled UFW on both VMs
- Allowed only required ports:
  - SSH (22)
  - HTTP (80) on Web Server
- Default deny for other inbound traffic

### SSH Hardening
- Disabled root login
- Tested authentication behavior
- Verified blocked access for unauthorized attempts

### Web Server
- Installed Nginx on Web Server VM
- Verified service using browser and CLI tools

---

## Cloud Concept Mapping
This setup represents basic Google Cloud concepts:

| Local Setup | GCP Concept |
|------------|------------|
| VirtualBox Network | VPC |
| Host-Only Adapter | Private Subnet |
| UFW Firewall | VPC Firewall Rules |
| Virtual Machines | Compute Engine |

Terraform files are included as **infrastructure design only** (not deployed).

---

## Screenshots
Screenshots included in the `screenshots/` folder:
- VM running status
- Network configuration
- Firewall rules
- SSH access testing
- Nginx web page

---

## Challenges & Notes
- Network interfaces required manual verification
- SSH access issues helped reinforce firewall and authentication concepts
- Firewall misconfiguration initially blocked valid traffic and was corrected

This project was built step by step while learning infrastructure fundamentals, including troubleshooting during setup.

---

## What I Learned
- Linux server basics
- Network segmentation
- Firewall and SSH security practices
- Infrastructure-first mindset before cloud deployment
- Translating local infrastructure into cloud architecture

---

## Next Improvements
- Add monitoring and logging
- Automate configuration
- Deploy similar architecture on cloud platform

---

## Author
**Ryan Adam**  
Aspiring IT Infrastructure & Cloud Engineer  
GitHub: https://github.com/ryanadams-code
