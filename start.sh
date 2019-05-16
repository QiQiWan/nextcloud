#!/bin/sh
if [ ! -f /var/local/aria2c/aria2.conf ];then
    mkdir /var/log/aria2c /var/local/aria2c
    touch /var/log/aria2c/aria2c.log
    touch /var/local/aria2c/aria2c.sess
    cp -u /aria2.conf /var/local/aria2c/
    chown www-data.www-data -R /var/log/aria2c /var/local/aria2c
    chmod 770 -R /var/log/aria2c /var/local/aria2c

fi
sudo -u www-data aria2c --conf-path=/var/local/aria2c/aria2.conf -D --log=/var/log/aria2c/aria2c.log
/entrypoint.sh apache2-foreground