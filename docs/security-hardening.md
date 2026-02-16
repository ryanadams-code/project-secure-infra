# Security Hardening – Project 1

## SSH Hardening

- Disabled root login
- Key-based authentication recommended
- Restricted SSH access to specific internal IP
- UFW firewall enabled

## Firewall Configuration

Default policy:
- deny incoming
- allow outgoing

Web Server:
- 80/tcp open to required network
- 22/tcp restricted

Admin Server:
- 22/tcp restricted
- No HTTP exposure

## Network Segmentation

- Host-only network isolates internal communication
- Admin VM acts as bastion host
- No direct SSH access from other networks

## Cloud Mapping Security Model

Simulated equivalent GCP setup:
- VPC (10.0.0.0/16)
- Subnet (10.0.1.0/24)
- Firewall rule: Allow HTTP (80)
- Firewall rule: Allow SSH (22) from Bastion only
