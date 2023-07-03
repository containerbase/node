# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.1

FROM ghcr.io/containerbase/base:9.0.7@sha256:53db2c60620f53c70bec6f38f76f72b51eafb5fe9dca72d93e10e5a3736108da

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
