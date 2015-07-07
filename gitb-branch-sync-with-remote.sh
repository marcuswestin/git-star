#!/bin/bash

set -e
cd "$(git rev-parse --show-toplevel)"

REMOTE="origin"

git remote update $REMOTE --prune