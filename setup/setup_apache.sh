#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
	echo "Tento skript potrebuje prava root" >&2
	exit 1
fi

echo -e "\n==============================="
echo      "   Installing Apache and PHP"
echo -e   "===============================\n"
# Nejdriv je potreba stahnout PHP a jeho dependencies
apt-get install php7.0 php7.0-mysql php7.0-mbstring php php-mysql php-mbstring

# Pak cely apache2 balik a PHP modul (aby se spoustel PHP kod a nevracel se)
apt-get install apache2 libapache2-mod-php7.0

# Povolit v Apache2 mod_rewrite (prepisovani URI)
a2enmod rewrite

# Povolit v PHP rozsireni doporucena pro Q2A
phpenmod mbstring
phpenmod mysqli

APP_NAME="BashOverflow"
WWW_DIR="/var/www/${APP_NAME,,}"
# Vytvorit dedikovany adresar pro VHosta BashOverflow
mkdir -p "$WWW_DIR"

# Vytvorit zde symlink do webové aplikace
# Ocekava se, ze aplikace bude v adresari /<jmeno_aplikace>
ln -s "/$APP_NAME" "$WWW_DIR/public"

AP_DIR="/etc/apache2"
VHOST="001-${APP_NAME,,}"
echo -e "\n==============================="
echo      "       Configuring vhost"
echo -e   "===============================\n"
# Vlozit konfiguraci VHostu do konfiguracni slozky Apache2
printf '<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the requests Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        ServerName "%s"

        ServerAdmin webmaster@localhost
        DocumentRoot "%s/public"

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn
        LogLevel debug

        ErrorLog "%s/error.log"
        CustomLog "%s/access.log" combined

        <Directory "%s/public">
                # Options:
                #   Indexes: If a request URI is a folder and no index file was found, list contents
                #   MultiViews: Turns on negotiating with the client for a specific version of requeste file
                #     in terms of different languages, encodings and accepted MIME types (text/html, image/jpeg$
                #   FolowSymlinks: If there is symlink in the document space, follow it and load the derefencee$
                #   ...
                Options -Indexes -MultiViews +FollowSymlinks

                # AllowOverride - which of the Options above may be overridden by a local .htaccess file
                AllowOverride All

                # Who may connect?
                #   local: Only clients from localhost
                #   all granted: Everyone
                #   all denied: Nobody
                #   ...
                Require all granted
        </Directory>
</VirtualHost>
' "$APP_NAME" "$WWW_DIR" "$WWW_DIR" "$WWW_DIR" "$WWW_DIR" > "$AP_DIR/sites-available/${VHOST,,}.conf"

echo -e "\n==============================="
echo      "      En/disabling vhosts"
echo -e   "===============================\n"
# Zakazat vsechny aktulni VHosty
find "$AP_DIR/sites-enabled" -name '*.conf' -type l -exec rm -f "{}" \; 2>/dev/null

# Povolit BashOverflow VHosta
a2ensite "${VHOST,,}"

echo -e "\n==============================="
echo      "      Restarting Apache2"
echo -e   "===============================\n"
# Restartovat Apache2
apache2ctl restart
