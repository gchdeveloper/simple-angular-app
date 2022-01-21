#!/usr/bin/env sh

echo 'Install Angular/CLI so that "ng serve" will run."'
set -x
npm install @angular/cli
set +x

echo 'Not sure if npm build works with Angular apps.'
set -x
npm run build
set +x

echo 'Start and capture process id to use to kill the app on shutdown.'
set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'App running at http://localhost:4200'
