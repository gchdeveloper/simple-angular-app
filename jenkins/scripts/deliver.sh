#!/usr/bin/env sh

echo 'Install Angular CLI for ng serve'
set -x
npm install @angular/cli
set +x

echo 'Start and save pid to kill later'
set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo pid =
cat .pidfile
