#!/usr/bin/env sh

echo 'Kill the "npm start" process launched with "deliver.sh".'
set -x
kill $(cat .pidfile)
