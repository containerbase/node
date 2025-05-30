# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.16.0

FROM ghcr.io/containerbase/base:13.8.37@sha256:63e55d7e39f3a3de00357b76f2e1a93054ce65c5b8c9bd816898e877b053706a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
