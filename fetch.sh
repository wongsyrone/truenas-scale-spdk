#!/bin/sh -ex
BRANCH=v24.09.x
git clone -b $BRANCH https://github.com/spdk/spdk --recursive spdk.src
rsync -rv --exclude=.git spdk.src/* .
rm -rf spdk.src fetch.sh
