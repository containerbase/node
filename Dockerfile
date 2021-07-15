# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM ghcr.io/containerbase/buildpack:1.11.0@sha256:f7ad21fee77a5e0ad278684121ae7e470cf684a6a7789f1969acc8e0611dc42f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
