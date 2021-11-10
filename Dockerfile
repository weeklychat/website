# syntax=docker/dockerfile:1
FROM netlify/build:xenial

# USER root

# RUN rm /var/log/lastlog /var/log/faillog && \
#         ln -s /dev/null /var/log/lastlog && \
#         ln -s /dev/null /var/log/faillog && \
#         useradd -u 99900000 -g users developer && \
#         rm /var/log/lastlog /var/log/faillog && \
#         touch /var/log/lastlog && \
#         touch /var/log/faillog

# RUN groupadd -g 1000 hostgroup && \
#     usermod -a -G hostgroup buildbot

# USER buildbot