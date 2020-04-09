FROM ubuntu:20.04
RUN mkdir -p /opt/mailslurper
COPY ./mailslurper /opt/mailslurper
WORKDIR /opt/mailslurper
ENTRYPOINT ["/opt/mailslurper/mailslurper"]

