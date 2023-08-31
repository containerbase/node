# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.1

FROM ghcr.io/containerbase/base:9.19.4@sha256:6a468331db72d7b20157c5c2fcd5bc8aef550d6185f72c3c713c4c62c23b0271

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
