#!/bin/bash
# Script 1: System Identity Report
# Author: Shreya Saxena | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Shreya Saxena"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- System info ---DISTRO=$(lsb_release -ds 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# --- Display ---
echo "=========================================="
echo "Open Source Audit – $STUDENT_NAME"
echo "=========================================="
echo ""
echo "System Identity Report"
echo "----------------------"
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo "Logged-in User     : $USER_NAME"
echo "Home Directory     : $HOME_DIR"
echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $CURRENT_DATE"
echo ""
echo "License Information"
echo "-------------------"
echo "This Ubuntu system is covered by the GNU General Public License (GPL)"
echo "Open source software grants users the freedom to run, study, share, and modify the code."
echo ""
echo "Chosen Software for Audit: $SOFTWARE_CHOICE"
echo "=========================================="
