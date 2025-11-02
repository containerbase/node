# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.1

FROM ghcr.io/containerbase/base:13.23.17@sha256:b7bedc98c46e80c2a753c1c5aa069d9696200bda607100b7ef9a522c76d578cc

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
