#!/bin/bash 


tag_num="$1"
commit_msg="$2"

git add .
git commit -m "refactor: $commit_msg"


#create and push the tag
git tag $tag_num
git push origin $tag_num