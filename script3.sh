#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shreya Saxena | Course: Open Source Software
# Chosen Software: Apache HTTP Server

# List of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "     DIRECTORY AUDIT REPORT"
echo "=========================================="
echo ""

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "=========================================="
echo "     SOFTWARE CONFIGURATION DIRECTORY"
echo "=========================================="
echo ""

# Check Apache config directory
APACHE_CONFIG="/etc/apache2"

if [ -d "$APACHE_CONFIG" ]; then
    PERMS=$(ls -ld "$APACHE_CONFIG" | awk '{print $1, $3, $4}')
    echo "✓ Apache config directory: $APACHE_CONFIG"
    echo "  Permissions: $PERMS"
    echo ""
    echo "  Contents:"
    ls -la "$APACHE_CONFIG" | head -10
else
    echo "✗ Apache config directory not found"
fi

echo ""
echo "=========================================="
