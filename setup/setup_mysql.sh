#!/bin/bash

DB_NAME="bashoverflow"
DB_USER="boserver"
DB_PASS="FQtuSlTCuaPnXbn9b461"


COMMANDS="CREATE DATABASE $DB_NAME;
ALTER DATABASE $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;
USE $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT CREATE,ALTER,DELETE,INSERT,SELECT,UPDATE,LOCK TABLES,REFERENCES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
"

# Login to mysql shell (asks for psw)
echo -e "\n===================================="
echo      "Following commands will be executed:"
echo      "$COMMANDS"
echo      "Enter your MySQL root password below."
echo -e   "====================================\n"
mysql -u root -p <<< "$COMMANDS"
echo -e "\n===================================="
echo "Following settings were created:"
echo "DB name: $DB_NAME"
echo "DB user: $DB_USER"
echo "DB password: $DB_PASS"
echo -e "====================================\n"

# MySQL commands explanation

# create a database
#CREATE DATABASE database_name;

# view databases
#SHOW DATABASES;

# select the database to use
#USE database_name;

# view tables of database;
#SHOW TABLES;

# create a user
#CREATE USER 'username'@'hostname' IDENTIFIED BY 'password';

# grant privileges to the user on his whole dabatase
#GRANT privilege_name ON database_name.table_name TO 'username'@'hostname';

# flush the privileges to take effect
#FLUSH PRIVILEGES;
