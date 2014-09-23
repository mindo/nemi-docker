#/bin/bash
#
# script needed to init mysql
# if no configuration is present
#

if [ ! -f /var/lib/mysql/ibdata1 ]
then
    mysql_install_db

    /usr/bin/mysqld_safe &
    sleep 10s

    /usr/bin/mysqladmin -u root password '123'
    echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '123' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql -u root -p123

    killall mysqld
    sleep 10s
fi

/usr/bin/mysqld_safe
