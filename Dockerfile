# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.16.0

FROM ghcr.io/containerbase/base:13.8.31@sha256:88a16f312342b1386b70995452437fd2a434cf38bb56194037e87f3e531525c0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
