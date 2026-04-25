# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.15.0

FROM ghcr.io/containerbase/base:14.9.2@sha256:68c1d098119a465b2585301ad581a76ff7e1f76342baeffe7bbdf7e59dce1aa9

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
