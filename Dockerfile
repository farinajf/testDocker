#FROM library/debian:wheezy
#MAINTAINER kenneth@floss.es
#RUN apt-get update && apt-get -y install fortunes-off man
FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y
RUN apt-get install -y apache2 libapache2-mod-php php-mcrypt php-mysql
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#CMD ["/bootstrap.sh"]
