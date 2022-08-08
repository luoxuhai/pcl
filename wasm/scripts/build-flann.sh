#!/usr/bin/env bash

#--------------------------------------------
# Reference
#
# https://github.com/flann-lib/flann/tree/1.9.1
#--------------------------------------------

source $(dirname $0)/common.sh

LIB_PATH=$DEPS_DIR/flann

FLAGS=(
  -DBUILD_C_BINDINGS=OFF
  -DBUILD_PYTHON_BINDINGS=OFF
  -DBUILD_MATLAB_BINDINGS=OFF
  -DBUILD_CUDA_LIB=OFF
  -DUSE_OPENMP=OFF
  -DUSE_MPI=OFF
  -DBUILD_EXAMPLES=OFF
  -DBUILD_TESTS=OFF
  -DBUILD_DOC=OFF
  -DCMAKE_BUILD_TYPE=Release
  -DCMAKE_INSTALL_PREFIX=${LIB_PATH}/build
)

cd $LIB_PATH
rm -rf $LIB_PATH/build
mkdir -p build
cd $LIB_PATH/build

emcmake cmake ${FLAGS[@]} ..
emmake make j2 install

rm -rf !(include|lib)