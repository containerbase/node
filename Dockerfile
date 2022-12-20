# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.19.0

FROM ghcr.io/containerbase/buildpack:5.3.0@sha256:ee7e1b301f727e29c0eb17115bfdf6a536ce66c8ec41eeb9c39ca1b355891ff5

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
