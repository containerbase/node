# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.19.0

FROM ghcr.io/containerbase/buildpack:5.2.6@sha256:ab8ed17ceaa62d83784ea57e139e4ecd67d1a09be61006e61e79e3babcf6b91e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
