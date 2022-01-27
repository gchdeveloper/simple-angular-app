#!/usr/bin/env sh

# comment
echo 'Kill the "npm start" process launched with "deliver.sh".'
set -x
kill $(cat .pidfile)
