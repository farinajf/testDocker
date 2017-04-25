FROM library/debian:jessie
MAINTAINER kenneth@floss.es
RUN apt-get update && apt-get -y --no-install-recommends install libapache2-mod-php5 php5-mysql php5-gd php5-curl && rm -rf /var/cache/apt /var/lib/apt /var/lib/dpkg && a2enmod rewrite headers && sed -i -e 's:${APACHE_LOG_DIR}/access.log:/dev/stdout:' -e 's:${APACHE_LOG_DIR}/error.log:/dev/stderr:' /etc/apache2/sites-available/*

EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]

#FROM library/debian:wheezy
#MAINTAINER kenneth@floss.es
#RUN apt-get update && apt-get -y install fortunes-off man
#FROM ubuntu:16.04
#RUN apt-get update
#RUN apt-get install -y
#RUN apt-get install -y apache2 libapache2-mod-php php-mcrypt php-mysql
#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#CMD ["/bootstrap.sh"]

