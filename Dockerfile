# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.20.0

FROM ghcr.io/containerbase/base:13.23.6@sha256:af7c74e000727bfc7641235ddfaabd606270e7e97cd68de95dd1422b8fc8cf00

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" lt 25.0.0; then; install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
