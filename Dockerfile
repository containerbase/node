# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.1

FROM ghcr.io/containerbase/base:13.0.25@sha256:703d5833b6625642ecd2122a702b427e2bcb187d63bc83bc482fa0b3f80e6f81

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
