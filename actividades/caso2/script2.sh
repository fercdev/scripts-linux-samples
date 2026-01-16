#!/bin/bash

originBackupPath="/home/ubuntu/scripts"
destinationBackupPath="/home/ubuntu/backups"
fileName="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
file="$destinationBackupPath/$fileName"

mkdir -p $destinationBackupPath

tar -czf "$file" -C "$originBackupPath" .

echo "Archivo: $file backup ha finalizado"