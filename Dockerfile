FROM alpine:latest

LABEL "com.github.actions.name"="SonarQube project data importer"
LABEL "com.github.actions.description"="Import report data from Sonarqube and use it in Github"

RUN apt-get update && apt-get install -y curl nodejs@12
RUN rm -rf /var/lib/apt/lists/*

RUN npm config set unsafe-perm true && \
  npm install --silent --save-dev -g typescript@3.5.2 && \
  npm config set unsafe-perm false && \
  apk add --no-cache ca-certificates jq

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]