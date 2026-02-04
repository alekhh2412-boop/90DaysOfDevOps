# Linux Troubleshooting Runbook

## 🎯 Target Service
ssh

---

##  Environment Basics

### Command:
uname -a  
Observation:
Shows kernel version and system architecture.

### Command:
cat /etc/os-release  
Observation:
Confirms OS distribution and version.

---

##  Filesystem Sanity

### Command:
mkdir /tmp/runbook-demo

### Command:
cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo
Observation:
Filesystem is writable and files are accessible.

---

##  Snapshot: CPU & Memory

### Command:
top
Observation:
CPU usage is low; ssh process not consuming high resources.

### Command:
free -h
Observation:
Sufficient free memory available, no swap pressure.

---

##  Snapshot: Disk & IO

### Command:
df -h
Observation:
Disk usage below critical threshold.

### Command:
du -sh /var/log
Observation:
Logs directory size is reasonable.

---

##  Snapshot: Network

### Command:
ss -tulpn | grep ssh
Observation:
SSH is listening on port 22.

### Command:
curl -I http://localhost
Observation:
Local network stack responding correctly.

---

##  Logs Reviewed

### Command:
journalctl -u ssh -n 50
Observation:
No recent errors in SSH logs.

### Command:
tail -n 50 /var/log/auth.log
Observation:
Normal authentication entries.

---

## ✅ Quick Findings
- SSH service is running and healthy.
- No CPU, memory, disk, or network pressure.
- Logs show no critical errors.

---

## 🚨 If This Worsens (Next Steps)
1. Restart ssh service and recheck logs.
2. Increase SSH log verbosity for deeper inspection.
3. Capture strace of sshd process for debugging.
