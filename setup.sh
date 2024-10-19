#!/usr/bin/env bash

# Thiết lập quyền truy cập bộ nhớ cho Termux
termux-setup-storage

# Cập nhật và nâng cấp các gói của Termux
echo "Updating and upgrading Termux..."
pkg update && pkg upgrade -y

# Cài đặt Apache2, PHP, MariaDB và PHPMyAdmin
echo "Installing Apache2, PHP, MariaDB, and PHPMyAdmin..."
pkg install -y apache2 php php-apache mariadb phpmyadmin wget

# Tải về tệp cấu hình Apache từ URL và thay thế tệp cấu hình hiện tạ
rm -rf $PREFIX/etc/apache2/httpd.conf

# Hướng dẫn sử dụng Apache2
echo ""
echo "Instructions:"
echo "    Start Apache2: apachectl start"
echo "    Restart Apache2: apachectl restart"
echo "    Stop Apache2: apachectl stop"
echo ""

# Hoàn thành
echo "Setup completed."
cd ..
