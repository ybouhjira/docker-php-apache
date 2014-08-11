FROM phusion/baseimage:0.9.12
MAINTAINER Youssef Bouhjira

ADD scripts /build 
RUN /build/install.sh

RUN /usr/sbin/enable_insecure_key

# enable .htaccess & mod_rewrite
RUN a2enmod rewrite && rm /etc/apache2/apache2.conf && cp /build/apache2.conf /etc/apache2/

EXPOSE 80

CMD ["sbin/my_init"]
