# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.15.0

FROM ghcr.io/containerbase/base:7.2.0@sha256:e1cc3385743907dc925747623f7363b6a337ff44de0f8292e2ee8db95b9cce40

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
