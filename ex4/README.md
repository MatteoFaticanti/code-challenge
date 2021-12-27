# Exercise 4

## Requirements

A webserver installed (the script was tested using nginx on an ubuntu virtual machine), php and mysql.
wp-cli installed, on ubuntu the following commands can be used: 
```
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
```

## Usage

Is important to change the following parameters in the file for make the script working:

```
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
````

this script can be launched in the webserver directory, example `/var/www/html`  
in the following way: `sh wpinstall.sh`
