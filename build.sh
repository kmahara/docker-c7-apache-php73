#!/bin/sh

if [ "$http_proxy" != "" ]; then
	OPT="--build-arg http_proxy=$http_proxy"
fi

docker build \
-t kmahara/c7-apache-php73 \
$OPT \
.
