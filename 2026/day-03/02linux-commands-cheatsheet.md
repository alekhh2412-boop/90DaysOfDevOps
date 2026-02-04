# Linux Commands Cheat Sheet

## 🧠 Process Management
- ps aux – Show all running processes
- top – Live CPU and memory usage
- htop – Interactive process viewer (if installed)
- pgrep nginx – Get PID of a process
- kill PID – Stop a process
- kill -9 PID – Force stop a process
- uptime – System running time and load
- free -h – Memory usage

## 📁 File System
- ls -l – List files with details
- pwd – Show current directory
- cd /path – Change directory
- touch file.txt – Create empty file
- mkdir dir – Create directory
- rm file – Delete file
- rm -r dir – Delete directory
- df -h – Disk usage
- du -sh dir – Directory size
- chmod 755 file – Change permissions
- chown user:user file – Change ownership

## 📜 Logs & Files
- cat file – View file content
- less file – Scroll through file
- tail -n 50 file – Last 50 lines
- tail -f file – Live log monitoring
- grep "error" file – Search text

## 🌐 Networking
- ping google.com – Check connectivity
- ip addr – Show IP addresses
- ss -tuln – Open ports and services
- curl http://site – Test API or website
- dig google.com – DNS lookup

## 🔧 systemd / Services
- systemctl status nginx – Check service
- systemctl start nginx – Start service
- systemctl restart nginx – Restart service
- journalctl -u nginx – Service logs
