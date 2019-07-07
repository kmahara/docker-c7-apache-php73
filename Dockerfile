FROM centos:7
EXPOSE 80
CMD [ "/run.sh" ]

RUN yum -y install telnet httpd mod_ssl less http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
	yum -y install --enablerepo=remi,remi-php73 php php-mbstring php-pdo php-gd php-xml php-mcrypt php-xdebug php-opcache php-pecl-apcu
COPY data /tmp
RUN /tmp/install.sh
RUN mv /tmp/run.sh /
RUN rm -rf /tmp/*

VOLUME /var/www/html
VOLUME /var/log/httpd
VOLUME /var/run/httpd
