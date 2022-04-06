# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM ghcr.io/containerbase/buildpack:3.14.1@sha256:b832483d5873e1f367b86017a26f1c8b2a28d5027afd9165e5ae84dbf55608a2

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
