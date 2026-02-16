# Troubleshooting – Project 1

## Issue: Host-only adapter did not get IP

Cause:
- DHCP not enabled or not triggered

Solution:
- Run:
  sudo dhclient <interface>

---

## Issue: SSH Permission Denied

Cause:
- Firewall restriction
- Incorrect SSH configuration

Solution:
- Verify:
  sudo ufw status
  sudo systemctl status ssh

---

## Issue: Nginx not accessible

Cause:
- Port 80 blocked by firewall

Solution:
  sudo ufw allow 80/tcp
  sudo systemctl restart nginx
