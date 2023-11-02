# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.2

FROM ghcr.io/containerbase/base:9.23.10@sha256:500fe665605b6bcad30014bff345c56c6bdb1c148ae79d4ac56f84a9c046edfd

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
