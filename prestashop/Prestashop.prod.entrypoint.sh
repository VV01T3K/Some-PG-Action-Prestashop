#!/bin/sh
set -e

PARAMS_FILE="/var/www/html/app/config/parameters.php"
BACKUP_FILE="/tmp/db_backup.sql.gz.enc"

# Restore database from backup if it exists
if [ -f "$BACKUP_FILE" ]; then
    echo "Found database backup, initiating restore..."

    # Wait for database to be available
    echo "Waiting for database to be available..."
    for i in $(seq 1 30); do
        if mysql -h"${DB_HOST:-db}" -u"${DB_USER:-root}" -p"${DB_PASSWORD:-dev}" -e "SELECT 1" "${DB_NAME:-prestashop}" >/dev/null 2>&1; then
            echo "Database is available"
            break
        fi
        if [ $i -eq 30 ]; then
            echo "ERROR: Database did not become available after 30 attempts"
            exit 1
        fi
        sleep 1
    done

    # Restore database using db.sh script
    echo "Restoring database from backup..."
    cd /tmp
    /usr/local/bin/db.sh --silent restore "$BACKUP_FILE"

    # Delete backup file after successful restore
    rm -f "$BACKUP_FILE"
    echo "Database restore complete, backup file deleted"
else
    echo "No database backup found, skipping restore"
fi

if [ -f "$PARAMS_FILE" ]; then
    echo "Updating parameters.php with environment variables..."

    [ -n "$DB_HOST" ] && sed -i "s/'database_host' => '[^']*'/'database_host' => '$DB_HOST'/" "$PARAMS_FILE"
    [ -n "$DB_PORT" ] && sed -i "s/'database_port' => '[^']*'/'database_port' => '$DB_PORT'/" "$PARAMS_FILE"
    [ -n "$DB_NAME" ] && sed -i "s/'database_name' => '[^']*'/'database_name' => '$DB_NAME'/" "$PARAMS_FILE"
    [ -n "$DB_USER" ] && sed -i "s/'database_user' => '[^']*'/'database_user' => '$DB_USER'/" "$PARAMS_FILE"
    [ -n "$DB_PASSWORD" ] && sed -i "s/'database_password' => '[^']*'/'database_password' => '$DB_PASSWORD'/" "$PARAMS_FILE"

    echo "parameters.php updated"
fi

exec php-fpm
