# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.0

FROM ghcr.io/containerbase/base:11.11.37@sha256:53d92efa1258f0e187a7bee26dd10f0f51a18d9b009e313f070f8073df74c3c3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
