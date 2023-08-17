# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.1

FROM ghcr.io/containerbase/base:9.12.1@sha256:4c7f058d9707c1c259c74e0765977c6dc4d9d0bc36aab31c3257f23b74d20f98

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
