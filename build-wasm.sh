#!/usr/bin/env bash

#--------------------------------------------
# Directory Structure
#
# └── wasm
#     ├── deps
#     │   ├── boost
#     │   ├── eigen
#     │   └── flann
#     └── scripts
#--------------------------------------------

set -eo pipefail

SCRIPT_ROOT=$(dirname $0)/wasm/scripts

$SCRIPT_ROOT/build-flann.sh
$SCRIPT_ROOT/build-boost.sh
$SCRIPT_ROOT/build-pcl.sh
