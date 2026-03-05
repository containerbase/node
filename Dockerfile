# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.0

FROM ghcr.io/containerbase/base:14.5.2@sha256:6c5e127dad612a84a175d2ca469afb76c4dd7a05ffe4a185f207f3a11f81b9f5

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
