# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.1

FROM ghcr.io/containerbase/base:6.2.0@sha256:dcc70faff7e490c640c52f891cc2d030027b5583435f94917e691bebc7e85c52

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
