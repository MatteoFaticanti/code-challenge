#!/bin/bash -e

echo "WordPress Installation"

#insert mysql database username
db_username='newuser'

#insert mysql database password
db_psw='Uw+zmg58ntcpLLMB'

# username
wpuser='exampleuser'

# databse name
dbname="new_database2"

# website name
sitename="wordpress"

# website url
domain='http://192.168.178.60'


# download the WordPress core files
wp core download

# parse the current directory name
currentdirectory=$(pwd)

# generate random 12 character password
password=$(LC_CTYPE=C tr -dc A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+= < /dev/urandom | head -c 12)

# create the wp-config file
wp core config --dbname=$dbname --dbuser=$db_username --dbpass=$db_psw

# create database, and install WordPress
wp db create
wp core install --url="http://localhost/$currentdirectory" --title="$sitename" --admin_user="$wpuser" --admin_password="$password" --admin_email="user@example.org"

# install the _s theme
wp theme install https://downloads.wordpress.org/theme/twentysixteen.1.2.zip --activate

wp option update home $domain

wp option update siteurl $domain

clear

echo "================================================================="
echo "Installation is complete. Your username/password is listed below."
echo ""
echo "Username: $wpuser"
echo "Password: $password"
echo ""
echo "================================================================="
