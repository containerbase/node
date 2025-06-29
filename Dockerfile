# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.17.0

FROM ghcr.io/containerbase/base:13.8.45@sha256:229f1eb2c28a19db071876e68402b550721faaeb92252e35a816e97328dca511

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
