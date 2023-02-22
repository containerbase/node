# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.2

FROM ghcr.io/containerbase/base:6.2.1@sha256:d226b4796e5e9b38f7b0c2ceff4d0fcf43f5a1cc19a0bd3ca918df9d0b870566

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
