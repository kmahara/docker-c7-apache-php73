#!/bin/sh

rm -f /var/run/httpd/httpd.pid
rm -f /var/run/httpd/authdigest_shm.1

exec /usr/sbin/httpd -DFOREGROUND
