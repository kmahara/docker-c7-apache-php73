docker rm -f test
docker run -it --name test \
-p 8888:80 \
-v `pwd`/test:/data/web \
-v `pwd`/test/php.d/99-custom.ini:/etc/php.d/99-custom.ini \
-e TZ=Asia/Tokyo \
-e DEVELOPMENT=1 \
kmahara/c7-apache-php73
