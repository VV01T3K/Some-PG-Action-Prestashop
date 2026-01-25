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

set +e

# Continue with the original entrypoint script

if [ "$DB_SERVER" = "<to be defined>" -a $PS_INSTALL_AUTO = 1 ]; then
    echo >&2 'error: You requested automatic PrestaShop installation but MySQL server address is not provided '
    echo >&2 '  You need to specify DB_SERVER in order to proceed'
    exit 1
elif [ "$DB_SERVER" != "<to be defined>" -a $PS_INSTALL_AUTO = 1 ]; then
    RET=1
    while [ $RET -ne 0 ]; do
        echo "\n* Checking if $DB_SERVER is available..."
        mysql -h $DB_SERVER -P $DB_PORT -u $DB_USER -p$DB_PASSWD -e "status" > /dev/null 2>&1
        RET=$?

        if [ $RET -ne 0 ]; then
            echo "\n* Waiting for confirmation of MySQL service startup";
            sleep 5
        fi
    done
        echo "\n* DB server $DB_SERVER is available, let's continue !"
fi

# From now, stop at error
set -e

if [ ! -f ./config/settings.inc.php ] && [ ! -f ./app/config/parameters.php ] &&  [ ! -f ./install.lock ]; then

    echo "\n* Setting up install lock file..."
    touch ./install.lock

    echo "\n* Reapplying PrestaShop files for enabled volumes ...";

    if [ -d /tmp/data-ps/prestashop ]; then
        # init if empty
        echo "\n* Copying files from tmp directory ...";
        cp -n -R -T -p /tmp/data-ps/prestashop/ /var/www/html
    else
        echo "\n* No files to copy from tmp directory ...";
    fi

    if [ -f /tmp/defines_custom.inc.php ]; then
        cp -n -p /tmp/defines_custom.inc.php /var/www/html/config/defines_custom.inc.php
    fi

    if [ -d /tmp/pre-install-scripts/ ]; then
        echo "\n* Running pre-install script(s)..."

        for i in `ls /tmp/pre-install-scripts/`;do
            /tmp/pre-install-scripts/$i
        done
    else
        echo "\n* No pre-install script found, let's continue..."
    fi

    if [ $PS_FOLDER_INSTALL != "install" ] && [ -d /var/www/html/install ]; then
        echo "\n* Renaming install folder as $PS_FOLDER_INSTALL ...";
        mv /var/www/html/install /var/www/html/$PS_FOLDER_INSTALL/
    fi

    if [ $PS_FOLDER_ADMIN != "admin" ] && [ -d /var/www/html/admin ]; then
        echo "\n* Renaming admin folder as $PS_FOLDER_ADMIN ...";
        mv /var/www/html/admin /var/www/html/$PS_FOLDER_ADMIN/
    fi

    if [ $PS_HANDLE_DYNAMIC_DOMAIN = 1 ]; then
        cp /tmp/docker_updt_ps_domains.php /var/www/html
        sed -ie "s/DirectoryIndex\ index.php\ index.html/DirectoryIndex\ docker_updt_ps_domains.php\ index.php\ index.html/g" $APACHE_CONFDIR/conf-available/docker-php.conf
    fi

    if [ $PS_ERASE_DB = 1 ]; then
        echo "\n* Drop mysql database...";
        echo "\n* Dropping existing database $DB_NAME..."
        mysql -h $DB_SERVER -P $DB_PORT -u $DB_USER -p$DB_PASSWD -e "drop database if exists $DB_NAME;"
    fi

    if [ $PS_INSTALL_DB = 1 ]; then
        echo "\n* Create mysql database...";
        echo "\n* Creating database $DB_NAME..."
        mysqladmin -h $DB_SERVER -P $DB_PORT -u $DB_USER create $DB_NAME -p$DB_PASSWD --force;
    fi

    if [ $PS_INSTALL_AUTO = 1 ]; then
        echo "\n* Installing PrestaShop, this may take a while ...";

        if [ "$PS_DOMAIN" = "<to be defined>" ]; then
            export PS_DOMAIN=$(hostname -i)
        fi

        echo "\n* Launching the installer script..."
        runuser -g www-data -u www-data -- php -d memory_limit=-1 /var/www/html/$PS_FOLDER_INSTALL/index_cli.php \
        --domain="$PS_DOMAIN" --db_server=$DB_SERVER:$DB_PORT --db_name="$DB_NAME" --db_user=$DB_USER \
        --db_password=$DB_PASSWD --prefix="$DB_PREFIX" --firstname="John" --lastname="Doe" \
        --password="$ADMIN_PASSWD" --email="$ADMIN_MAIL" --language=$PS_LANGUAGE --country=$PS_COUNTRY \
        --all_languages=$PS_ALL_LANGUAGES --newsletter=0 --send_email=0 --ssl=$PS_ENABLE_SSL

        if [ $? -ne 0 ]; then
            echo 'warning: PrestaShop installation failed.'
        else
            echo "\n* Removing install folder..."
            rm -r /var/www/html/$PS_FOLDER_INSTALL/
        fi
    fi

    if [ -d /tmp/post-install-scripts/ ]; then
        echo "\n* Running post-install script(s)..."

        for i in `ls /tmp/post-install-scripts/`;do
            /tmp/post-install-scripts/$i
        done
    else
        echo "\n* No post-install script found, let's continue..."
    fi

    echo "\n* Setup completed, removing lock file..."
    rm ./install.lock

elif [ ! -f ./config/settings.inc.php ] && [ ! -f ./app/config/parameters.php ] && [ -f ./install.lock ]; then

    echo "\n* Another setup is currently running..."
    sleep 10
    exit 42

elif [ -f ./config/settings.inc.php ] && [ ! -f ./app/config/parameters.php ] && [ -f ./install.lock ]; then

    echo "\n* Shop seems setup but remaining install lock still present..."
    sleep 10
    exit 42

else
    echo "\n* PrestaShop Core already installed...";
fi

if [ $PS_DEMO_MODE -ne 0 ]; then
    echo "\n* Enabling DEMO mode ...";
    sed -ie "s/define('_PS_MODE_DEMO_', false);/define('_PS_MODE_DEMO_',\ true);/g" /var/www/html/config/defines.inc.php
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
