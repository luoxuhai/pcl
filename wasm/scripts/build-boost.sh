#!/usr/bin/env bash

#--------------------------------------------
# Boost version: 1.80.0
#
# Reference
#
# https://www.boost.org/doc/libs/1_80_0/libs/iostreams/doc/index.html?path=7
# https://gist.github.com/luoxuhai/a99f98dce6b681e4b28bad5afd5ce3b7
#--------------------------------------------

source $(dirname $0)/common.sh

LIB_PATH=$DEPS_DIR/boost

FLAGS=(
  -j6
  toolset=emscripten
  link=static
  runtime-link=static
  threading=single
  variant=release
  --prefix=./build
  -sNO_COMPRESSION=1
  -sNO_BZIP2=1
  -sNO_ZLIB=1
  -sNO_LZMA=1
  -sNO_ZSTD=1
)

LIBRARIES=(
  --with-date_time
  --with-system
  --with-filesystem
  --with-iostreams
  --with-regex
)

cd $LIB_PATH
rm -rf $LIB_PATH/build
mkdir -p build

./bootstrap.sh
./b2 clean
./b2 ${FLAGS[@]} ${LIBRARIES[@]} install

rm -rf $LIB_PATH/bin.v2
