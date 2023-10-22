# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.2

FROM ghcr.io/containerbase/base:9.23.5@sha256:e533b0de6bb49cfef937f29f9277264415828406cdd7bfe89ace0180545d733a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
