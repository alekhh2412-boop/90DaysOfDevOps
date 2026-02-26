#!/bin/bash
set -euo pipefail

LOG_DIR="$1"

if [[ ! -d "$LOG_DIR" ]]; then
  echo "Error: Directory does not exist"
  exit 1
fi

COMPRESSED=$(find "$LOG_DIR" -name "*.log" -mtime +7 -type f | wc -l)
DELETED=$(find "$LOG_DIR" -name "*.gz" -mtime +30 -type f | wc -l)

find "$LOG_DIR" -name "*.log" -mtime +7 -type f -exec gzip {} \;
find "$LOG_DIR" -name "*.gz" -mtime +30 -type f -delete

echo "Compressed files: $COMPRESSED"
echo "Deleted files: $DELETED"
