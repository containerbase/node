# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.1

FROM ghcr.io/containerbase/base:9.23.3@sha256:5171c79230d6f4f587cc779f9eacc88132ed52a55c268d6231665bcfe4200e5d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
