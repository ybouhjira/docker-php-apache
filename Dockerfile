FROM phusion/baseimage:0.9.12
MAINTAINER Youssef Bouhjira

ADD scripts /build 
RUN /build/install.sh

RUN /usr/sbin/enable_insecure_key

EXPOSE 80

CMD ["sbin/my_init"]
