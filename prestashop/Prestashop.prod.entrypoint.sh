#!/bin/sh
set -e

PARAMS_FILE="/var/www/html/app/config/parameters.php"

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
