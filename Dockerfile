# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.1

FROM ghcr.io/containerbase/base:10.3.0@sha256:cae7416cdddf385891ac4064db49889359a4a08089eeca534ab720d422085deb

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
