# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.10.0

FROM ghcr.io/containerbase/base:9.27.0@sha256:3b7f1a59408a047977b55fe08fd44c89b36b5f4ccbe04aaf38d9ff1a2f835bcf

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
