#!/bin/env bash

set -euxo pipefail

curl -H "Accept: application/vnd.github.everest-preview+json" \
	-H "Authorization: token $(cat ~/.github/pat)" \
    --request POST \
    --data '{"event_type": "do-something"}' \
    https://api.github.com/repos/gracig/CSharp-Sample-Project/dispatches
