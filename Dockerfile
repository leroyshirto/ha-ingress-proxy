FROM homeassistant/armhf-base-raspbian:buster

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        nginx \
    && rm -rf /var/lib/apt/lists/*

COPY rootfs /