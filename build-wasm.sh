#!/usr/bin/env bash

#--------------------------------------------
# Directory Structure
#
# └── wasm
#     ├── deps
#     │   ├── boost v1.80.0
#     │   ├── eigen v3.5.0
#     │   └── flann  v1.9.1
#     └── scripts
#--------------------------------------------

set -eo pipefail

SCRIPT_ROOT=$(dirname $0)/wasm/scripts

$SCRIPT_ROOT/build-flann.sh
$SCRIPT_ROOT/build-boost.sh
$SCRIPT_ROOT/build-pcl.sh
