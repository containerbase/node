# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.0

FROM ghcr.io/containerbase/base:10.3.11@sha256:d22ed08f962c8adae5a146ca4c37a7711475f64af1da1f9af59f976b289ddecb

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
