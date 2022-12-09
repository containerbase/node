# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.18.1

FROM ghcr.io/containerbase/buildpack:5.2.3@sha256:dfdd081f2063c79a4adfbac342857b6f2d5637d7a2249bed4e48997437c02aa1

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
