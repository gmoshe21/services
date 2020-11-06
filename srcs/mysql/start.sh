#!/bin/bash

rc default ;
/etc/init.d/mariadb setup
rc-service mariadb start 
mysql -u root --skip-password < /etc/sql_config.sql
mysql -u root wordpress  < /etc/wordpress.sql ;
rc-service mariadb stop ;
/usr/bin/mysqld_safe ;