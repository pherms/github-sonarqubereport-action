FROM alpine:latest

LABEL "com.github.actions.name"="SonarQube project data importer"
LABEL "com.github.actions.description"="Import report data from Sonarqube and use it in Github"

RUN apk update && apk add curl
RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]