# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.18.1

FROM ghcr.io/containerbase/buildpack:5.2.1@sha256:890bab81f340af2ca29b3c8709c46f4ec9f57545493e3fb09d602af52445e475

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
