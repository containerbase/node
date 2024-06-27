# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.15.0

FROM ghcr.io/containerbase/base:10.12.0@sha256:e23e8635f58ec2f8d9f8176ab065f6563920c263828c17d27aa00199612f6cb3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
