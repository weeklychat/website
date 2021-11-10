#!/bin/bash
set -e

# chmod -R g+rw /opt/buildhome/repo

# $usermod -u 1000 buildbot

#chown -R buildbot:buildbot /opt/buildhome/repo

# rm /var/log/lastlog /var/log/faillog && \
#   ln -s /dev/null /var/log/lastlog && \
#   ln -s /dev/null /var/log/faillog && \
#   usermod -u 1000 buildbot && \
#   rm /var/log/lastlog /var/log/faillog && \
#   touch /var/log/lastlog && \
#   touch /var/log/faillog
 
# gosu

# exec "$@"
exec "$@"