#!/bin/bash
set -e

if [[ "${NOLOG}" = 1 ]]; then
   exec "$@" > /tmp/mail.log
else
   exec "$@"
fi
