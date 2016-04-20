FROM alpine

ADD run.sh /
ENV SSH_DEFAULT_PORT 22
ENV SSH_PORT 2222
VOLUME /etc/ssh
VOLUME /etc/init.d
CMD ["/run.sh"]
