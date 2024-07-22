# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.15.1

FROM ghcr.io/containerbase/base:10.16.0@sha256:b039aa654299e4d6d17e1fe0f868a659b9aaf88adb08a2745279b48a3af8e268

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
