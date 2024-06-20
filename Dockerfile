# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.15.0

FROM ghcr.io/containerbase/base:10.11.7@sha256:5055918e83c5fa5b9588c69280bbd9600b7769768218258e913c09da8961eaa3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
