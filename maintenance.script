#!/bin/bash
LOGFILE="/var/log/maintenance.log"

{
  echo "===== $(date) Maintenance Started ====="
  /home/ubuntu/log_rotate.sh /var/log
  /home/ubuntu/backup.sh /etc /home/ubuntu/backups
  echo "===== $(date) Maintenance Completed ====="
} >> "$LOGFILE" 2>&1
