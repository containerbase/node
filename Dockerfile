# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.1

FROM ghcr.io/containerbase/base:14.54.0@sha256:0e3e7727d516cbbe7ac2c95121f3e0d5898ab6eab46345747562dd7666c94733

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
