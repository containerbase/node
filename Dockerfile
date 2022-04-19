# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM ghcr.io/containerbase/buildpack:3.14.7@sha256:eb48b29dd2c7044216e3fef8ddacde9176761212ef5483f60c91d701a5d547c0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
