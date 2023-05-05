#!/bin/bash

BACKUP_SOURCE="/path/to/source"
BACKUP_DESTINATION="/path/to/destination"

mkdir -p $BACKUP_DESTINATION

BACKUP_FILENAME="backup_$(date +%Y%m%d%H%M%S).tar.gz"
BACKUP_PATH="$BACKUP_DESTINATION/$BACKUP_FILENAME"

tar -czvf $BACKUP_PATH $BACKUP_SOURCE

echo "Backup succeeded: $BACKUP_PATH"