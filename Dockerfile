# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.1

FROM ghcr.io/containerbase/base:13.23.15@sha256:ff5ec3d319d6acb61f6915826230844064463dafe5882d3cf1d5028951686271

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
