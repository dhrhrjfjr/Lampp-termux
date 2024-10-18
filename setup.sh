termux-setup-storage
echo "update and upgrade termux"
pkg update && pkg upgrade
echo "Install apache2, php, Mariadb and phpmyadmin"
pkg install apache2 php php-apache mariadb phpmyadmin wget
wget
