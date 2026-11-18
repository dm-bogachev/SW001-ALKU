#!/bin/bash

# ============================================================
# SW001-ALKU backup script
# ============================================================

SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_DIR="$(dirname "$SOURCE_DIR")/Backup"
PROJECT_NAME="$(basename "$SOURCE_DIR")"
DATE_TIME="$(date '+%Y-%m-%d_%H-%M-%S')"
BACKUP_FILE="$BACKUP_DIR/${PROJECT_NAME}_${DATE_TIME}.tar.gz"


mkdir -p "$BACKUP_DIR"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting backup..."
echo "Source: $SOURCE_DIR"
echo "Destination: $BACKUP_FILE"
cd "$(dirname "$SOURCE_DIR")" || exit 1
tar -czf "$BACKUP_FILE" "$PROJECT_NAME"

if [ $? -ne 0 ]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERROR: Backup failed!"
    rm -f "$BACKUP_FILE"
    exit 1
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backup completed successfully."

# ============================================================
# Оставляем только 3 последних backup
# ============================================================

BACKUP_COUNT=$(find "$BACKUP_DIR" \
    -maxdepth 1 \
    -type f \
    -name "${PROJECT_NAME}_*.tar.gz" \
    | wc -l)

if [ "$BACKUP_COUNT" -gt 3 ]; then

    find "$BACKUP_DIR" \
        -maxdepth 1 \
        -type f \
        -name "${PROJECT_NAME}_*.tar.gz" \
        -printf '%T@ %p\n' \
        | sort -n \
        | head -n "$((BACKUP_COUNT - 3))" \
        | cut -d' ' -f2- \
        | xargs -r rm -f

fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Current backups:"
find "$BACKUP_DIR" \
    -maxdepth 1 \
    -type f \
    -name "${PROJECT_NAME}_*.tar.gz" \
    -printf '%TY-%Tm-%Td %TH:%TM:%TS %p\n' \
    | sort