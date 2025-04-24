# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.15.0

FROM ghcr.io/containerbase/base:13.8.16@sha256:c44873e0a805336cc0c4f6cc475a0576584de79715d5ee14b39e2ff2548bef45

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
