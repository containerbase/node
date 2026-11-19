# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.3

FROM ghcr.io/containerbase/base:14.68.0@sha256:6b90a46537d7fb06c6b84b48563091fe011d58135cc105a5b4fa4892c4a2aa01

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
