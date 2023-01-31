# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.19.0

FROM ghcr.io/containerbase/buildpack:6.0.5@sha256:dc41c522d25acce3b4d1cbe26483833ba53bc31de8ab14e8439ea8916e3499c1

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
