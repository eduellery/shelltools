#!/usr/bin/env sh
FROM=$1
TO=$2
MERGE_BASE="$(git merge-base --octopus "$FROM" "$TO")"
git format-patch $MERGE_BASE..$TO
