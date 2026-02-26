#!/bin/bash
set -euo pipefail

echo "Script started"

# 1) set -u demo (undefined variable)
echo "User is: $USERNAME"

# 2) set -e demo (command failure)
ls /wrong/path

# 3) set -o pipefail demo (pipeline failure)
cat missing.txt | grep "devops"

echo "Script ended"
