# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.13.0

FROM ghcr.io/containerbase/buildpack:6.0.8@sha256:af57a931fef16aad96f22e8c3b9d34047a4280223b9871638e87a5cc1eca47e0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
