#!/bin/bash

# Simple PrestaShop Database Backup & Restore with Encryption
# Usage: ./db.sh [--silent] backup   or   ./db.sh [--silent] restore <file>   or   ./db.sh [--silent] decrypt <file>   or   ./db.sh [--silent] clean
# Use --silent flag to only output errors

set -e

# Load environment variables
if [ -f "../../.env" ]; then
  source "../../.env"
elif [ -f "../.env" ]; then
  source "../.env"
elif [ -f ".env" ]; then
  source ".env"
else
  echo "Error: .env file not found"
  exit 1
fi

# Check for encryption key
if [ -z "$DB_BACKUP_KEY" ]; then
  echo "Error: DB_BACKUP_KEY not set in .env file"
  exit 1
fi

CONTAINER="${DB_HOST:-db}"
DB="${DB_NAME:-prestashop}"
DB_USER="${DB_USER:-root}"
DB_PASS="${DB_PASSWORD:-dev}"
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
    FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).sql.gz.enc"
    docker exec "$CONTAINER" mariadb-dump -u"$DB_USER" -p"$DB_PASS" "$DB" | gzip | openssl enc -aes-256-cbc -salt -pbkdf2 -pass pass:"$DB_BACKUP_KEY" > "$FILE"
    log "Encrypted backup saved: $FILE"
    ;;
  
  restore)
    if [ -z "$2" ]; then
      FILE=$(ls -t "$BACKUP_DIR"/*.sql.gz.enc 2>/dev/null | head -1)
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
      if docker exec "$CONTAINER" mariadb -u"$DB_USER" -p"$DB_PASS" -e "SELECT 1" "$DB" >/dev/null 2>&1; then
        log "Database is available"
        break
      fi
      if [ $i -eq 30 ]; then
        echo "Database did not become available after 30 attempts"
        exit 1
      fi
      sleep 1
    done
    
    openssl enc -d -aes-256-cbc -pbkdf2 -pass pass:"$DB_BACKUP_KEY" -in "$FILE" | gunzip | docker exec -i "$CONTAINER" mariadb -u"$DB_USER" -p"$DB_PASS" "$DB"
    log "Database restored"
    ;;
  
  list)
    log "Available backups:"
    ls -lh "$BACKUP_DIR" 2>/dev/null | tail -n +2 || log "  (none)"
    ;;
  
  decrypt)
    if [ -z "$2" ]; then
      FILE=$(ls -t "$BACKUP_DIR"/*.sql.gz.enc 2>/dev/null | head -1)
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

    OUTPUT="${FILE%.enc}"
    log "Decrypting: $FILE"
    openssl enc -d -aes-256-cbc -pbkdf2 -pass pass:"$DB_BACKUP_KEY" -in "$FILE" > "$OUTPUT"
    log "Decrypted to: $OUTPUT"
    ;;

  clean)
    log "Cleaning up backups, keeping only the newest..."
    BACKUP_COUNT=$(ls -1 "$BACKUP_DIR"/*.sql.gz.enc 2>/dev/null | wc -l)
    
    if [ "$BACKUP_COUNT" -le 1 ]; then
      log "Only one or fewer backups found, nothing to clean"
      exit 0
    fi
    
    NEWEST=$(ls -t "$BACKUP_DIR"/*.sql.gz.enc 2>/dev/null | head -1)
    log "Keeping: $(basename "$NEWEST")"
    
    ls -t "$BACKUP_DIR"/*.sql.gz.enc 2>/dev/null | tail -n +2 | while read -r file; do
      log "Removing: $(basename "$file")"
      rm "$file"
    done
    log "Cleanup complete"
    ;;
esac
