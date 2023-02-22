#!/usr/bin/env bash

curl \
  --request POST \
  --url https://api.cloudflare.com/client/v4/zones/"$CLOUD_FLARE_ZONE_ID"/purge_cache \
  --header 'Content-Type: application/json' \
  --header "X-Auth-Email: ${CLOUD_FLARE_EMAIL}" \
  --header "X-Auth-Key: ${CLOUD_FLARE_TOKEN}" \
  --data "{
    prefixes: [
      ${PREFIX}
    ]
  }"