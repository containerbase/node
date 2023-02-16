# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.0

FROM ghcr.io/containerbase/base:6.1.4@sha256:84ac72438f0d9a39ab820b009c1ae3c75e322e334b5249a5fc9f75c928712fbf

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
