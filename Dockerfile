# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.0

FROM ghcr.io/containerbase/base:9.31.5@sha256:c36d6ec3560dddd93c37320af6288cd6da4923026eb667d0ceb64fbb78e79faf

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
