FROM phusion/baseimage:0.9.12
MAINTAINER Youssef Bouhjira

ADD scripts /build 
RUN /build/install.sh

EXPOSE 80 3306

CMD ["sbin/my_init"]
