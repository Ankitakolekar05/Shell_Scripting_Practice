#!/bin/bash

echo "Enter log file name:"
read logfile

if [ ! -f "$logfile" ]
then
    echo "Error: File does not exist."
    exit 1
fi

info_count=$(grep INFO "$logfile" | wc -l)
warning_count=$(grep WARNING "$logfile" | wc -l)
error_count=$(grep ERROR "$logfile" | wc -l)
total_lines=$(wc -l < "$logfile")

report_file="report.txt"

echo "========== SYSTEM LOG REPORT ==========" > "$report_file"
echo "Log File          : $logfile" >> "$report_file"
echo "Total Log Entries : $total_lines" >> "$report_file"
echo "INFO Messages     : $info_count" >> "$report_file"
echo "WARNING Messages  : $warning_count" >> "$report_file"
echo "ERROR Messages    : $error_count" >> "$report_file"
echo "=======================================" >> "$report_file"

echo "==================================="
echo "        SYSTEM LOG REPORT"
echo "==================================="
echo "Log File          : $logfile"
echo "Total Log Entries : $total_lines"
echo -e "\e[32mINFO Messages     : $info_count\e[0m"
echo -e "\e[33mWARNING Messages  : $warning_count\e[0m"
echo -e "\e[31mERROR Messages    : $error_count\e[0m"
echo "==================================="
echo "Report saved as: $report_file"
