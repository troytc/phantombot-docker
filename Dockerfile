FROM openjdk:8-jre-alpine

RUN apk add --no-cache bash curl \
  mkdir -p /data
COPY ./start-phantombot.sh /
COPY ./botlogin.txt /

RUN chmod +x /start-phantombot.sh

EXPOSE 25000 25001 25002 25003 25004 25005

VOLUME ["/data"]

ENTRYPOINT ["/start-phantombot.sh"]
