FROM haproxy:1.9-alpine

EXPOSE 2375
ENV ALLOW_RESTARTS=0 \
    AUTH=0 \
    BUILD=0 \
    COMMIT=0 \
    CONFIGS=0 \
    CONTAINERS=0 \
    DISTRIBUTION=0 \
    EVENTS=1 \
    EXEC=0 \
    IMAGES=0 \
    INFO=0 \
    LOG_LEVEL=info \
    NETWORKS=0 \
    NODES=0 \
    PING=1 \
    PLUGINS=0 \
    POST=0 \
    SECRETS=0 \
    SERVICES=0 \
    SESSION=0 \
    SWARM=0 \
    SYSTEM=0 \
    TASKS=0 \
    VERSION=1 \
    VOLUMES=0
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Metadata
ARG VCS_REF
ARG BUILD_DATE
LABEL org.opencontainers.image.vendor=Tecnativa \
      org.opencontainers.image.licenses=Apache-2.0 \
      org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.revision="$VCS_REF" \
      org.opencontainers.image.source="https://github.com/Tecnativa/docker-socket-proxy"
