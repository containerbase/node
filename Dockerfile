# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.16.0

FROM ghcr.io/containerbase/buildpack:4.7.3@sha256:4fad95ac4053ed67236859f1565552d1506ee06d2562108ab87df50e683dca01

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
