#!/usr/bin/env sh

git branch --merged | egrep -v "(^\*|master|staging|develop|dev|def)" | xargs -n 1 git branch -d
