# Linux Practice – Processes and Services

## 🔹 Process Checks

### Command:
ps aux | head

### Observation:
Shows list of running processes with user, PID, CPU, and memory usage.

---

### Command:
top

### Observation:
Live view of system CPU, memory usage, and running processes.

---

## 🔹 Service Checks

### Service Inspected:
ssh

### Command:
systemctl status ssh

### Observation:
SSH service is active and running. It starts automatically at boot.

---

### Command:
systemctl list-units --type=service | head

### Observation:
Shows active services managed by systemd.

---

## 🔹 Log Checks

### Command:
journalctl -u ssh --no-pager | tail -n 20

### Observation:
Displays recent SSH service logs.

---

### Command:
tail -n 20 /var/log/syslog

### Observation:
Shows recent system log entries.

---

## 🔹 Mini Troubleshooting Flow

1. Check if service is running using systemctl status.
2. Verify process using ps or pgrep.
3. Check logs using journalctl.
4. Restart service if required.
