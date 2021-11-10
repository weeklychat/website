# syntax=docker/dockerfile:1
FROM netlify/build:xenial

# Install a script that will update Netlify buildbot user to
# have the same UID and GID as the host running the Docker container.
# Script is then run in the Docker entrypoint.
#
#  https://github.com/boxboat/fixuid
#
USER root
RUN USER=buildbot && \
    GROUP=buildbot && \
    curl -SsL https://github.com/boxboat/fixuid/releases/download/v0.5.1/fixuid-0.5.1-linux-amd64.tar.gz | tar -C /usr/local/bin -xzf - && \
    chown root:root /usr/local/bin/fixuid && \
    chmod 4755 /usr/local/bin/fixuid && \
    mkdir -p /etc/fixuid && \
    printf "user: $USER\ngroup: $GROUP\npaths:\n  - /opt/buildhome" > /etc/fixuid/config.yml

USER buildbot