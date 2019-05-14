#!/usr/bin/env sh

git branch -r --merged | egrep -v "(^\*|master|staging|develop|dev|def)" | grep origin | sed 's/origin\///' | xargs -n 1 git push --delete origin
