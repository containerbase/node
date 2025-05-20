# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.15.1

FROM ghcr.io/containerbase/base:13.8.28@sha256:bb610fd705e4578d455a9abebea565c10b4a5d8bf629cb7306a165921cc8a55f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
