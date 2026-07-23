#!/bin/bash

hostname_name=$(hostname)
current_user=$(whoami)
current_directory=$(pwd)
current_date=$(date)

echo "========================================="
echo "         SYSTEM MONITOR"
echo "========================================="
echo "Hostname          : $hostname_name"
echo "Current User      : $current_user"
echo "Current Directory : $current_directory"
echo "Current Date      : $current_date"
echo "========================================="
