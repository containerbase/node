# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.16.0

FROM ghcr.io/containerbase/base:11.11.5@sha256:8bf3cd0de89656c19ce0bb9ce5202a57256f3a72bfa54001faf07e2f92f4e000

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
