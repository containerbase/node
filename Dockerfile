# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.15.0

FROM ghcr.io/containerbase/base:14.10.9@sha256:84055e6df0bddc285b73576e2f68cd7dd30f89f2a1eff6404d53ecccd476866f

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
