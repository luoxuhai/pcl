#!/bin/bash

source $(dirname $0)/common.sh

CACHE_DIR=${DEPS_DIR}/.cache

rm -rf ${CACHE_DIR}
mkdir -p ${CACHE_DIR}
cd ${CACHE_DIR}

# Download
# curl -o boost.zip 'https://udomain.dl.sourceforge.net/project/boost/boost/1.80.0/boost_1_80_0.zip'
curl -o eigen.zip 'https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip'
git clone https://github.com/luoxuhai/flann.git --depth 1 --single-branch --branch wasm

rm -rf ${DEPS_DIR}/boost ${DEPS_DIR}/flann ${DEPS_DIR}/eigen

unzip -o -d ${DEPS_DIR} ${CACHE_DIR}/boost.zip 
unzip -o -d ${DEPS_DIR} ${CACHE_DIR}/eigen.zip

mv ${DEPS_DIR}/boost_1_80_0 ${DEPS_DIR}/boost
mv ${DEPS_DIR}/eigen-3.4.0 ${DEPS_DIR}/eigen
mv ${DEPS_DIR}/flann ${DEPS_DIR}/flann

rm -rf ${CACHE_DIR}