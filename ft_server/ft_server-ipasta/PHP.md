
php-fpm7.3 -v

/etc/init.d/php7.3-fpm start

http://localhost/phpmyadmin/index.php

заходим в майскл и создаем базу
CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

в ней созадем пользователя

GRANT ALL ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY '123456';

# Config MYSQL
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password


echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION IDENTIFIED BY '123456';" | mysql -u root --skip-password