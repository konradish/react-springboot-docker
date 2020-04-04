#!/bin/sh
cd /app
if [ ! -f ./package.json ]; then
    yarn global add create-react-app@3.4.0
    create-react-app .
fi
yarn start
