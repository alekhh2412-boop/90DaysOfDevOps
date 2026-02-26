#!/bin/bash
set -euo pipefail

# -------- Functions --------

host_os_info() {
  echo "Hostname : $(hostname)"
  echo "OS Info  : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
}

uptime_info() {
  echo "Uptime   : $(uptime -p)"
}

disk_usage() {
  echo "Top 5 Disk Usage (by size):"
  df -h / | awk 'NR==1 || NR==2'
}

memory_usage() {
  echo "Memory Usage:"
  free -h
}

top_cpu_processes() {
  echo "Top 5 CPU Consuming Processes:"
  ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# -------- Main Function --------

main() {
  echo "=============================="
  echo "      SYSTEM INFO REPORT      "
  echo "=============================="

  echo -e "\n--- Host & OS Info ---"
  host_os_info

  echo -e "\n--- Uptime ---"
  uptime_info

  echo -e "\n--- Disk Usage ---"
  disk_usage

  echo -e "\n--- Memory Usage ---"
  memory_usage

  echo -e "\n--- CPU Usage ---"
  top_cpu_processes

  echo -e "\n========== END =========="
}

# -------- Call Main --------
main
