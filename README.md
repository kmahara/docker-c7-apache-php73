# Overview

CentOS 7 + Apche 2.4 + PHP 7.3

## Installed PHP Modules
* php-mbstring
* php-pdo
* php-gd
* php-xml
* php-mcrypt
* php-xdebug
* php-opcache
* php-pecl-apcu

## Default Directories

Apache directories are customized by /etc/httpd/httpd.conf .

* /data/web/html
* /data/web/log

# How to use

```
docker run -d --name web \
-p 80:80 \
-v /data/web:/data/web \
-v /data/web/conf:/etc/httpd/conf \
-v /data/web/conf.d:/etc/httpd/conf.d \
-v /data/web/php.d/99-custom.ini:/etc/php.d/99-custom.ini \
-e TZ=Asia/Tokyo \
-e LANG=en_US.utf8 \
-e HOST_HOSTNAME=$HOSTNAME \
kmahara/c7-apache-php73
```

# How to build
./build.sh

# How to test run
./run.sh
