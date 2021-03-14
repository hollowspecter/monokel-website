#!/usr/bin/env bash

# zip up the files
tar -czf package.tgz _site

# upload them with sshpass
export SSHPASS=$DEPLOY_PASS
sshpass -e scp package.tgz $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH

# run the deploy script on the server
sshpass -e ssh $DEPLOY_USER@$DEPLOY_HOST $DEPLOY_PATH/deploy.sh