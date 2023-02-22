#!/usr/bin/env bash

gsutil rsync -dr -x '\..*|./[.].*$' . "$DESTINATION"