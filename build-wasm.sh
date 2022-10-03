#!/bin/bash

#--------------------------------------------
# Directory Structure
#
# └── wasm
#     ├── README.md
#     ├── deps
#     │   ├── boost
#     │   ├── eigen
#     │   └── flann
#     └── scripts
#         ├── build-boost.sh
#         ├── build-flann.sh
#         ├── build-pcl.sh
#         ├── common.sh
#         ├── setup-deps.sh
#         └── emscripten.jam
#--------------------------------------------

set -eo pipefail

SCRIPT_ROOT=$(dirname $0)/wasm/scripts
DEPS_ROOT=$(dirname $0)/wasm/deps

if [ ! -d "${DEPS_ROOT}/flann/build/lib" ]; then
  $SCRIPT_ROOT/build-flann.sh
fi

if [ ! -d "${DEPS_ROOT}/boost/build/lib" ]; then
  $SCRIPT_ROOT/build-boost.sh
fi

$SCRIPT_ROOT/build-pcl.sh
