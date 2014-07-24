FROM phusion/baseimage
MAINTAINER Youssef Bouhjira

ADD scripts /build 
RUN /build/install.sh

EXPOSE 80 3306

CMD ["sbin/my_init"]
