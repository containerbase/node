# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.1

FROM ghcr.io/containerbase/base:13.4.2@sha256:0f8267aa4fc0a7e99c2475074930abab0bb181d5cb71c2fa434feb35d1afa4a4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
