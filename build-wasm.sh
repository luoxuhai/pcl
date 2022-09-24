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

$SCRIPT_ROOT/build-flann.sh
$SCRIPT_ROOT/build-boost.sh
$SCRIPT_ROOT/build-pcl.sh
