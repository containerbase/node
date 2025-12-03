# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.1

FROM ghcr.io/containerbase/base:13.25.6@sha256:2423db7f08b72f552b9b03a155e8ff953ef7bbe9d767ca219cca859c46781746

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
