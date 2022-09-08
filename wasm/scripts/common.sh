#!/usr/bin/env bash

# Common for all scripts

set -eo pipefail
shopt -s extglob

# Root directory
ROOT_DIR=$PWD

# Dependencies directory
DEPS_DIR=$ROOT_DIR/wasm/deps

# Emsdk directory
# See: https://github.com/emscripten-core/emsdk#downloads--how-do-i-get-the-latest-emscripten-build
# 
# EMSDK_DIR=/emsdk
# source $EMSDK_DIR/emsdk_env.sh