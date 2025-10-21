# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.0

FROM ghcr.io/containerbase/base:13.23.7@sha256:f66fbc64b8788361e6fc609eef5dc36c1fd183e60ee6d2391d49e07237b30a9c

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
