# Day 19 – Shell Scripting Project

## Scripts Created
- log_rotate.sh
- backup.sh
- maintenance.sh

## Sample Outputs
[Paste terminal output snippets]
-Log Rotation Script
Compressed files: 4  
Deleted files: 1
- Backup archive created
  backup-2026-02-21.tar.gz
- Maintenance log
===== Sat Feb 21 21:23:04 UTC 2026 Maintenance Started =====
./maintenance.sh: line 6: /home/ubuntu/log_rotate.sh: No such file or directory
./maintenance.sh: line 7: /home/ubuntu/backup.sh: No such file or directory
===== Sat Feb 21 21:23:04 UTC 2026 Maintenance Completed =====
===== Sat Feb 21 21:24:35 UTC 2026 Maintenance Started =====
./maintenance.sh: line 6: /home/ubuntu/log_rotate.sh: No such file or directory
./maintenance.sh: line 7: /home/ubuntu/backup.sh: No such file or directory
===== Sat Feb 21 21:24:35 UTC 2026 Maintenance Completed =====
===== Wed Feb 25 05:30:38 UTC 2026 Maintenance Started =====
./maintenance.sh: line 6: /home/ubuntu/log_rotate.sh: No such file or directory
./maintenance.sh: line 7: /home/ubuntu/backup.sh: No such file or directory
===== Wed Feb 25 05:30:38 UTC 2026 Maintenance Completed =====

## Cron Entries
[no crontab for unbuntu]

## Screenshots
- Log rotation output
- <img width="892" height="647" alt="1" src="https://github.com/user-attachments/assets/6cd13ef0-591c-4039-860c-f668a1caeeab" />

- Backup archive created
- <img width="947" height="597" alt="2 backup" src="https://github.com/user-attachments/assets/602bc060-1f65-46e7-8121-306418a7b3f6" />

- Crontab list
- <img width="492" height="77" alt="3 crontab" src="https://github.com/user-attachments/assets/9b20be05-e3b6-4464-b43b-f2a54475a972" />

- Maintenance log
-<img width="1166" height="507" alt="4" src="https://github.com/user-attachments/assets/cde3c8b0-2846-42d5-b1c7-498272ae637c" />

## What I Learned
- How to automate log cleanup
- How backups work in production
- How cron schedules real jobs
