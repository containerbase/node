# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.1

FROM ghcr.io/containerbase/buildpack:3.12.2@sha256:44db9bd1b00b4971583c71c0bb2c724f44d992a30aee3cfbf871092213ac5c6e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
