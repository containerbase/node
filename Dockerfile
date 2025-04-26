# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.15.0

FROM ghcr.io/containerbase/base:13.8.17@sha256:24a4dd4ac98c5f9cedaaae344b84157106d9538f97720a48be4e652fc04fee07

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
