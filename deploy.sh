#!/bin/bash

npm run build:client
scp -r ~/sites/webpack-ssr/public root@95.182.79.99:/home/vuetify-ssr