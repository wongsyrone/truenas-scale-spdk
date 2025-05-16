#!/bin/sh -ex
TAG=v24.09

# Supplying tag and depth on this line resulted in the wrong
# submodules being checked out.  Avoid.
git clone https://github.com/spdk/spdk --recursive spdk.src
( cd spdk.src ; git checkout $TAG )
rsync -rv --exclude=.git spdk.src/* .
rm -rf spdk.src fetch.sh
