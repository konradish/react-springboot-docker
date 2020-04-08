#!/bin/sh
cd /app
if [ ! -f ./package.json ]; then
    yarn global add create-react-app
    create-react-app .
fi
chmod -R 777 .
yarn start
