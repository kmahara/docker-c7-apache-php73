#!/bin/sh

proxy_ip=`docker inspect -f '{{ .NetworkSettings.IPAddress }}' proxy2 2> /dev/null`

if [ $? = 0 ]; then
	OPT="--build-arg http_proxy=$proxy_ip:3128"
fi

docker build \
-t kmahara/c7-apache-php73 \
$OPT \
.
