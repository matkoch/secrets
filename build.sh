#!/usr/bin/env bash

bash --version 2>&1 | head -n 1
set -eo pipefail
env | sort
sleep 30