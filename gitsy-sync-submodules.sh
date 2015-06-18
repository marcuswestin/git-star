#!/bin/bash

set -e
cd "$(git rev-parse --show-toplevel)"

git submodule sync
git submodule update --init --recursive
