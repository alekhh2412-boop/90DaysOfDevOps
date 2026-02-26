#!/bin/bash

PACKAGES=("nginx" "curl" "wget")

for PKG in "${PACKAGES[@]}"
do
    if dpkg -s "$PKG" >/dev/null 2>&1; then
        echo "$PKG is already installed — skipping"
    else
        echo "$PKG is not installed — installing..."
        apt-get install -y "$PKG"
        if [ $? -eq 0 ]; then
            echo "$PKG installed successfully"
        else
            echo "Failed to install $PKG"
        fi
    fi
done
