#!/bin/bash

npm run build
scp -r ~/sites/vuetify-ssr/public root@95.182.79.99:/home/vuetify-ssr
ssh root@95.182.79.99 'supervisorctl restart vuetify'
