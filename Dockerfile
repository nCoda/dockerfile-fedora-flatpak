FROM fedora:27
LABEL maintainer="Christopher Antila <christopher@ncodamusic.org>"

# Use a script to configure the container. This way we can
# split up the operations and do it all in a single layer.
COPY scripts/    /tmp/
RUN /tmp/dnf.sh
RUN /tmp/flatpak.sh

VOLUME [ "/sys/fs/cgroup", "/tmp", "/run" ]

USER fpbuilder
