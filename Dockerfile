# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM ghcr.io/containerbase/buildpack:1.10.0@sha256:b7630c77e29bbfada900a74df043e6e9a49b60ed0c17e2ed0315a3bd5416da53

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
