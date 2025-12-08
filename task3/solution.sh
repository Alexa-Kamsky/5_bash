#!/bin/bash

LOGFILE=$1

info_count=$(grep -c "INFO" "$LOGFILE")
error_count=$(grep -c "ERROR" "$LOGFILE")
warn_count=$(grep -c "WARN" "$LOGFILE")

echo "INFO: $info_count" 
echo "ERROR: $error_count"
echo "WARN: $warn_count"
