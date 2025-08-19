# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.18.0

FROM ghcr.io/containerbase/base:13.10.7@sha256:0e7f67a6279b8236f83956a79486919c9d2d8dd9a0cd4867b9355044cda749e1

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
