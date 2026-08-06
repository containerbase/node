# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.19.0

FROM ghcr.io/containerbase/base:14.13.14@sha256:24d6b4d809993a73542c9187e858eaa1979ab252e77ea42d32286e592192ba39

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
