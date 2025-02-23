# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.14.0

FROM ghcr.io/containerbase/base:13.7.18@sha256:76a6046635887b05412d17395c2472636805e0d63aca754acb3437c35bb49f7f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
