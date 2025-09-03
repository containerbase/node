# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.19.0

FROM ghcr.io/containerbase/base:13.10.14@sha256:428d383d26277041b2dba63e73ead1d4eef5395ba89885ba92fafa24ee92c3d0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
