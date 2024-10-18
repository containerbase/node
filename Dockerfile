# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.0

FROM ghcr.io/containerbase/base:11.11.33@sha256:ab0e01b696b2400471eeb0eecc9272f399cee1119277354f0d624009195ccfed

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
