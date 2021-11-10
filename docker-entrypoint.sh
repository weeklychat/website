#!/bin/bash
set -e

# Script to update the Netlify buildbot user to have the same
# UID and GID as the host running the Docker container.
#
#  https://github.com/boxboat/fixuid
#
echo "Updating container user IDs to be the same as the host.  This can take a minute or two..."
eval $( fixuid -q )
echo "Done."

exec "$@"