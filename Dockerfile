FROM alpine

LABEL "name"="bash"
LABEL "repository"="https://github.com/olivierlemoal/workflow-webhook"
LABEL "version"="1.0.0"
LABEL org.opencontainers.image.source=https://github.com/olivierlemoal/workflow-webhook

LABEL com.github.actions.name="Workflow Webhook"
LABEL com.github.actions.description="An action that will call a webhook from your Github workflow"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="gray-dark"

RUN apk add --no-cache bash curl openssl util-linux xxd jq jo

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
