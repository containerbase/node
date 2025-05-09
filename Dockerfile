# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.15.0

FROM ghcr.io/containerbase/base:13.8.24@sha256:94397043fe1448235e00d481678bb1375974a68453ee173eaf21547d660cd0c6

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
