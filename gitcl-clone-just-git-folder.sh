#!/bin/bash

set -e

URL=$1

if [ "$URL" == "" ]; then
    echo "Usage: gitcl-clone-just-git-folder URL"
    exit -1
fi

DIR="/tmp/gitcl-clone-just-git-folder"
rm -rf $DIR
mkdir $DIR
git clone $URL $DIR
mv $DIR/.git .
rm -rf $DIR
