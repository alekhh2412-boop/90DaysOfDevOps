# Day 07 – Linux File System Hierarchy & Scenarios

## 🗂️ Part 1: Linux File System Hierarchy

### /
Root of the filesystem. Everything starts here.
I would use this when understanding overall disk structure.

Command:
ls -l /
Observation:
Shows top-level directories like /etc, /var, /home.

---

### /home
Contains user home directories.
I would use this when checking user files or scripts.

Command:
ls -l /home
Observation:
Shows user directories.

---

### /root
Home directory of root user.
I would use this when logged in as root.

Command:
ls -l /root
Observation:
Contains root-specific files.

---

### /etc
Contains system and service configuration files.
I would use this when debugging service configs.

Command:
ls -l /etc | head
Observation:
Contains config files like hostname, ssh.

---

### /var/log
Contains log files.
I would use this first during troubleshooting.

Command:
ls -l /var/log | head
Observation:
Shows log directories and files.

---

### /tmp
Temporary files.
I would use this for testing or temp scripts.

Command:
ls -l /tmp
Observation:
Temporary runtime files.

---

### /bin
Essential command binaries.
I would use this when checking core commands.

Command:
ls -l /bin | head
Observation:
Contains commands like ls, cp.

---

### /usr/bin
User command binaries.
I would use this for installed tools.

Command:
ls -l /usr/bin | head
Observation:
Contains many user-level commands.

---

### /opt
Optional/third-party applications.
I would use this when apps are installed manually.

Command:
ls -l /opt
Observation:
May be empty or contain app directories.

---

### 🔍 Hands-on Checks

Command:
du -sh /var/log/* 2>/dev/null | sort -h | tail -5
Observation:
Shows largest log files.

Command:
cat /etc/hostname
Observation:
Shows system hostname.

Command:
ls -la ~
Observation:
Shows files in my home directory.

---

## 🧠 Part 2: Scenario-Based Practice

### Scenario 1: Service Not Starting (myapp)

Step 1:
systemctl status myapp  
Why:
Check if service is failed or inactive.

Step 2:
journalctl -u myapp -n 50  
Why:
Check logs for error messages.

Step 3:
systemctl is-enabled myapp  
Why:
Check if service starts on boot.

Step 4:
systemctl list-units --type=service  
Why:
Verify service exists.

---

### Scenario 2: High CPU Usage

Step 1:
top  
Why:
See live CPU usage.

Step 2:
ps aux --sort=-%cpu | head -10  
Why:
Identify top CPU-consuming processes.

Step 3:
Note PID of top process  
Why:
To investigate or act on it.

---

### Scenario 3: Finding Docker Logs

Step 1:
systemctl status docker  
Why:
Confirm docker service is running.

Step 2:
journalctl -u docker -n 50  
Why:
View recent docker logs.

Step 3:
journalctl -u docker -f  
Why:
Follow logs in real-time.

---

### Scenario 4: File Permission Issue

Step 1:
ls -l /home/user/backup.sh  
Why:
Check current permissions.

Step 2:
chmod +x /home/user/backup.sh  
Why:
Add execute permission.

Step 3:
ls -l /home/user/backup.sh  
Why:
Verify permission change.

Step 4:
./backup.sh  
Why:
Confirm script runs successfully.
