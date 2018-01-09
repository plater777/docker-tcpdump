FROM debian:stable-slim

MAINTAINER Santiago Platero (https://github.com/plater777)

RUN apk update && \
	apk add --no-cache tcpdump && \
	rm -f /tmp/* /etc/apk/cache/*

ENTRYPOINT ["tcpdump"]

CMD ["--help"]