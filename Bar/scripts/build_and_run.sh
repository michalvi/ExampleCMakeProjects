#!/usr/bin/env bash
set -o errexit

__DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
pushd ${__DIR}/..
mkdir -p build
pushd build
cmake ..
make -j5 -l10
./applications/Bar $@
