termux-setup-storage
echo "update and upgrade termux"
pkg update && pkg upgrade
echo "Install apache2, php, Mariadb and phpmyadmin"
pkg install -y apache2 php php-apache mariadb phpmyadmin wget
wget https://dhrhrjfjr.github.io/wtf/httpd.conf
rm -rf $PREFIX/etc/apache2/httpd.conf
mv httpd.conf $PREFIX/etc/apache2
