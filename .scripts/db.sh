#!/bin/bash

# Simple PrestaShop Database Backup & Restore
# Usage: ./db.sh [--silent] backup   or   ./db.sh [--silent] restore <file>   or   ./db.sh [--silent] clean
# Use --silent flag to only output errors

set -e

CONTAINER="db"
DB="prestashop"
BACKUP_DIR="./prestashop/backup"

mkdir -p "$BACKUP_DIR"

SILENT=false
if [ "$1" = "--silent" ]; then
  SILENT=true
  shift
fi

log() {
  if [ "$SILENT" = false ]; then
    echo "$@"
  fi
}

case "$1" in
  backup)
    log "Backing up database..."
    FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).sql.gz"
    docker exec "$CONTAINER" mariadb-dump -uroot -pdev "$DB" | gzip > "$FILE"
    log "Backup saved: $FILE"
    ;;
  
  restore)
    if [ -z "$2" ]; then
      FILE=$(ls -t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | head -1)
      if [ -z "$FILE" ]; then
        echo "No backup files found"
        exit 1
      fi
      log "Using latest backup..."
    else
      FILE="$2"
    fi
    
    if [ ! -f "$FILE" ]; then
      echo "File not found: $FILE"
      ls -lh "$BACKUP_DIR"
      exit 1
    fi
    log "Restoring from: $FILE"
    
    log "Waiting for database to be available..."
    for i in {1..30}; do
      if docker exec "$CONTAINER" mariadb -uroot -pdev -e "SELECT 1" "$DB" >/dev/null 2>&1; then
        log "Database is available"
        break
      fi
      if [ $i -eq 30 ]; then
        echo "Database did not become available after 30 attempts"
        exit 1
      fi
      sleep 1
    done
    
    gunzip -c "$FILE" | docker exec -i "$CONTAINER" mariadb -uroot -pdev "$DB"
    log "Database restored"
    ;;
  
  list)
    log "Available backups:"
    ls -lh "$BACKUP_DIR" 2>/dev/null | tail -n +2 || log "  (none)"
    ;;
  
  clean)
    log "Cleaning up backups, keeping only the newest..."
    BACKUP_COUNT=$(ls -1 "$BACKUP_DIR"/*.sql.gz 2>/dev/null | wc -l)
    
    if [ "$BACKUP_COUNT" -le 1 ]; then
      log "Only one or fewer backups found, nothing to clean"
      exit 0
    fi
    
    NEWEST=$(ls -t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | head -1)
    log "Keeping: $(basename "$NEWEST")"
    
    ls -t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | tail -n +2 | while read -r file; do
      log "Removing: $(basename "$file")"
      rm "$file"
    done
    log "Cleanup complete"
    ;;
esac
