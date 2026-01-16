#!/bin/bash

# script para poder comprimir utilizando el comando zip

originBackupPath="/home/ubuntu/scripts"
destinationBackupPath="/home/ubuntu/backups"
fileName="backup_$(date +%Y%m%d_%H%M%S).zip"
file="$destinationBackupPath/$fileName"

#tar -czf "$file" -C "$originBackupPath" .
zip -r "$file" "$originBackupPath"

echo "Archivo (ZIP): $file backup ha finalizado"