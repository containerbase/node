# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.2

FROM ghcr.io/containerbase/base:9.23.12@sha256:7200ea0cc7bb19a9d33881a14da2bc0208daf7553cadc0fff084ad158e372c50

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
