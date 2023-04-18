#!/bin/bash


tag_num="$1"
commit_msg="$2"
if [[ $tag_num == "" ]];then
    echo "[X] Please specify tag name"
    exit 0
fi

git add .
git commit -m "refactor: $commit_msg"


#  create and push the tag
git tag $tag_num
git push origin $tag_num