FROM phusion/baseimage:0.9.19
MAINTAINER Peter Lindeman <simsupport@marin.nl>

RUN apt-get update && apt-get install -y git python python-crypto

RUN git clone https://github.com/scumjr/yubikeyedup.git
WORKDIR /yubikeyedup

ADD syslog-ng.sh /etc/my_init.d/syslog-ng.sh
ADD yubiserve.sh /etc/service/yubiserve/run

CMD ["/sbin/my_init"]
