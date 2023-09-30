# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.0

FROM ghcr.io/containerbase/base:9.20.7@sha256:73c2282042b264f499e178ef8af82a5dcc95ef2b691efd4399ad7e89d47ab3f3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
