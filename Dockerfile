# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.0

FROM ghcr.io/containerbase/base:9.20.8@sha256:f1e00ac4044af65fd82d5a932894556e2bee906886c23a388af319225739e261

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
