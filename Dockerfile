# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.1

FROM ghcr.io/containerbase/base:13.25.9@sha256:cb6a8d374845f1c8b8fb3952d1c280575ab6b382bc4b5c1cf00b35fd4dbfbc54

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
