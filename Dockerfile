# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.3

FROM ghcr.io/containerbase/base:14.66.20@sha256:3971d420e05e89ff94a4ff33fc91e44445717eadb5716e321d5ffd0ac2d68090

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
