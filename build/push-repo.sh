#!/bin/bash

echo "hej"

mkdir -p helm
cd helm  
git config --global user.name "Github Actions"
git config --global user.email "development@kvalitetsit.dk"
git clone https://github.com/KvalitetsIT/helm-repo
cd helm-repo
mkdir -p openid
cp ../../openid-*.tgz openid
helm repo index . --url https://raw.githubusercontent.com/KvalitetsIT/helm-repo/master/
git add -A
git commit -m "Adding new openid chart"
git push https://$1@github.com/KvalitetsIT/helm-repo
