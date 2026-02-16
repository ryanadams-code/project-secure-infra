# Deployment Notes – Project 1

## Environment
- VirtualBox
- Ubuntu Server 22.04 LTS
- Host-only + NAT Adapter

## VM Configuration

### Web Server VM
- Private IP: 192.168.56.x
- Services:
  - Nginx (Port 80)
  - SSH (Port 22 – restricted)
- UFW enabled

### Admin VM (Bastion)
- Private IP: 192.168.56.x
- SSH only
- UFW enabled

## Network Setup
- Host-only network for internal communication
- NAT for internet access (package installation only)
- No direct internet exposure for Admin VM

## Firewall Rules

Web Server:
- Allow 80/tcp (HTTP)
- Allow 22/tcp (SSH from Admin only)

Admin Server:
- Allow 22/tcp (restricted)
- Default deny incoming

## Verification

- Ping test between VMs ✔
- SSH test from Admin → Web ✔
- HTTP test via curl ✔
