# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.17.0

FROM ghcr.io/containerbase/base:13.8.52@sha256:a77ff546359430da174457c545a4e29e04408fe88bb4500be85797ef11767559

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
