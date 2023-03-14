#!/usr/bin/env bash

cd dist || exit
gsutil rsync -dr -x '\..*|./[.].*$' . "$DESTINATION"