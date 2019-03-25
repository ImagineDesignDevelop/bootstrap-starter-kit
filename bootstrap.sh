# Update Packages
apt-get update
# Upgrade Packages
apt-get upgrade

# Basic Linux Stuff
apt-get install -y git

# make backup copy of index.html
cd /var/www/html
mv index.html index-backup.html

# Apache
apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

# remove unewanted apache index.html and restore original
cd /var/www/html
rm index.html
mv index-backup.html index.html

# Restart Apache
sudo service apache2 restart