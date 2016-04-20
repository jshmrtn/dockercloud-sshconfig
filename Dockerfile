FROM alpine

ADD run.sh /
ENV SSH_PORT 2222
VOLUME /etc/ssh
CMD ["/run.sh"]
