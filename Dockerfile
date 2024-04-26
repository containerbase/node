# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.2

FROM ghcr.io/containerbase/base:10.3.19@sha256:b7239f4e3e1f3266507048af2d75674d917ada2853365faf2ffe999a094fd999

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
