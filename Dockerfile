# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.0

FROM ghcr.io/containerbase/base:10.0.0@sha256:262f9ca471682dbb9be7ba666cf965d05d971745835100ce32c660bfef873b7d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
