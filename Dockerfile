# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.0

FROM ghcr.io/containerbase/base:13.26.2@sha256:c756d0acc372c1ab80fda67bfd5ef53fa27516018bab44a9a06d17addee94fea

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
