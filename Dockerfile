FROM alpine:latest

RUN apk --no-cache add minidlna

ADD minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "/usr/sbin/minidlnad", "-d" ]
