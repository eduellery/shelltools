#!/usr/bin/env sh
git for-each-ref --sort=taggerdate --format '%(refname) %(taggerdate)' refs/tags
