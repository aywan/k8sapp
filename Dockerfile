FROM scratch

ENV AWAPP_LOCAL_HOST 0.0.0.0
ENV AWAPP_LOCAL_PORT 8080
ENV AWAPP_LOG_LEVEL 0

EXPOSE $AWAPP_LOCAL_PORT

COPY certs /etc/ssl/
COPY bin/linux-amd64/awapp /

CMD ["/awapp"]
