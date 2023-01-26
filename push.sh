#!/bin/sh

tag="v0.0.$1"
comment="$2"

echo "Pushing tag $tag"
git add .
git commit -m "changes $1: $comment"
git tag $tag
git push private_origin $tag
echo "Done Pushing"