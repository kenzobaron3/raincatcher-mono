#!/usr/bin/env bash
for repo in ./apps/* ./packages/*; do
  name=$(basename $repo)
  remote="git@github.com:feedhenry-raincatcher/$name.git"
  git remote add $name $remote
done
git remote -v