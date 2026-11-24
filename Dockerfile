# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.3

FROM ghcr.io/containerbase/base:14.68.4@sha256:091455dbb4507f3e4ff58d1e04c65f37c89c3b514b11156d38eb2f6de0206990

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
