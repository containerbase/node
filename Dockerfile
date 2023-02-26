# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.2

FROM ghcr.io/containerbase/base:6.3.0@sha256:b04fd349a1562141276094036d105535df492ac11fd7d23f158c418686f34493

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
