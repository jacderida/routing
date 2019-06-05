#!/usr/bin/env bash

TRAVIS_PULL_REQUEST_BRANCH="fixup_commit_protection"

OUTPUT=$(git log "fleming..$TRAVIS_PULL_REQUEST_BRANCH" --oneline | grep -iE 'fixup|wip')
if [[ $? != 1 ]]; then
    echo "Found fixup or WIP commit(s):"
    echo "$OUTPUT"
    exit 1
fi
