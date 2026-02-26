#!/bin/bash
set -euo pipefail

SRC="$1"
DEST="$2"
DATE=$(date +%Y-%m-%d)
ARCHIVE="backup-$DATE.tar.gz"

if [[ ! -d "$SRC" ]]; then
  echo "Source directory does not exist"
  exit 1
fi

mkdir -p "$DEST"

tar -czf "$DEST/$ARCHIVE" "$SRC"

if [[ -f "$DEST/$ARCHIVE" ]]; then
  SIZE=$(du -sh "$DEST/$ARCHIVE" | awk '{print $1}')
  echo "Backup created: $ARCHIVE ($SIZE)"
else
  echo "Backup failed"
  exit 1
fi

find "$DEST" -name "backup-*.tar.gz" -mtime +14 -delete
