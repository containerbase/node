# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.14.0

FROM ghcr.io/containerbase/base:13.8.0@sha256:e574b2a87ac2ead295f2adc64b529dec684d211cb62bf0ddbc69a734e3212b8b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
