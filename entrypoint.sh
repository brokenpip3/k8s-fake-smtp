#!/usr/bin/env sh

set -e

t=$(date -u -I'minutes')
# Need in python 3.10 since smtp module contains deprecated async library
export PYTHONWARNINGS="ignore"

printf "%s - Starting fake smtp\n" "${t}"
if [ "${NOLOG}" = 1 ]; then
   printf "%s - Privacy mode\n" "${t}"
   exec "$@" > /tmp/mail.log
else
   printf "%s - Log-all-mail mode\n" "${t}"
   exec "$@"
fi
