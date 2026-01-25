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

# Update shop URL in database if SHOP_DOMAIN and SHOP_PORT are set
if [ -n "$SHOP_DOMAIN" ] && [ -n "$SHOP_PORT" ]; then
    echo "Updating shop URL in database to include port..."

    # Wait for database to be available
    for i in $(seq 1 30); do
        if mysql -h"${DB_HOST:-db}" -u"${DB_USER:-root}" -p"${DB_PASSWORD:-dev}" -e "SELECT 1" "${DB_NAME:-prestashop}" >/dev/null 2>&1; then
            break
        fi
        if [ $i -eq 30 ]; then
            echo "WARNING: Could not connect to database to update shop URL"
            break
        fi
        sleep 1
    done

    # Update ps_shop_url table to include port in domain
    mysql -h"${DB_HOST:-db}" -u"${DB_USER:-root}" -p"${DB_PASSWORD:-dev}" "${DB_NAME:-prestashop}" <<-EOSQL
        UPDATE ps_shop_url
        SET domain = '${SHOP_DOMAIN}:${SHOP_PORT}',
            domain_ssl = '${SHOP_DOMAIN}:${SHOP_PORT}'
        WHERE id_shop = 1;
EOSQL

    echo "Shop URL updated to: ${SHOP_DOMAIN}:${SHOP_PORT}"
fi

echo "\n* Almost ! Starting web server now\n";

if [ -d /tmp/init-scripts/ ]; then
    echo "\n* Running init script(s)..."
    for i in `ls /tmp/init-scripts/`;do
        /tmp/init-scripts/$i
    done
else
    echo "\n* No init script found, let's continue..."
fi

exec php-fpm
