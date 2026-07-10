# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.18.0

FROM ghcr.io/containerbase/base:14.12.7@sha256:47217dec5edb8b7a67883e05736d90790dded113c4311ebed8207857b39641d9

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
