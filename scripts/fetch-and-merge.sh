#!/bin/bash
#git fetch --all
for repo in ./apps/* ./packages/*; do
  echo "Merging $(basename $repo)"
  git merge -s subtree $(basename $repo)/master --allow-unrelated-histories || break
done