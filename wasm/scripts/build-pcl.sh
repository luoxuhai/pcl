#!/bin/bash

#--------------------------------------------
# PCL version: 1.12.1
#
# Reference
#
# https://pcl.readthedocs.io/projects/tutorials/en/master/compiling_pcl_posix.html
# https://pcl.readthedocs.io/projects/tutorials/en/master/building_pcl.html#building-pcl
#--------------------------------------------

source $(dirname $0)/common.sh

LIB_PATH=$ROOT_DIR

DEPS=(
  -DEIGEN_INCLUDE_DIR=$DEPS_DIR/eigen
  -DFLANN_INCLUDE_DIR=$DEPS_DIR/flann/build/include
  -DFLANN_LIBRARY=$DEPS_DIR/flann/build/lib/libflann_cpp_s.a
  -DFLANN_LIBRARY_TYPE="STATIC"
  -DBOOST_ROOT=$DEPS_DIR/boost/build
  -DBoost_INCLUDE_DIR=$DEPS_DIR/boost/build/include
  -DBoost_LIBRARY_DIRS=$DEPS_DIR/boost/build/lib
  -DBoost_DATE_TIME_LIBRARY=$DEPS_DIR/boost/build/lib/libboost_date_time.a
  -DBoost_FILESYSTEM_LIBRARY=$DEPS_DIR/boost/build/lib/libboost_filesystem.a
  -DBoost_SYSTEM_LIBRARY=$DEPS_DIR/boost/build/lib/libboost_system.a
  -DBoost_IOSTREAMS_LIBRARY=$DEPS_DIR/boost/build/lib/libboost_iostreams.a
  -DBoost_REGEX_LIBRARY=$DEPS_DIR/boost/build/lib/libboost_regex.a
)

CONFIG=(
  -DPCL_SHARED_LIBS=OFF
  -DCMAKE_INSTALL_PREFIX=${LIB_PATH}/build
  -DCMAKE_BUILD_TYPE=Release
  -DBUILD_CUDA=OFF
  -DBUILD_GPU=OFF
  -DBUILD_apps=OFF
  -DBUILD_benchmarks=OFF
  -DBUILD_global_tests=OFF
  -DBUILD_simulation=OFF
  -DBUILD_tools=OFF
)

SUPPORT=(
  -DWITH_CUDA=OFF
  -DWITH_DAVIDSDK=FALSE
  -DWITH_DOCS=OFF
  -DWITH_DSSDK=FALSE
  -DWITH_ENSENSO=FALSE
  -DWITH_LIBUSB=OFF
  -DWITH_OPENGL=OFF
  -DWITH_OPENMP=OFF
  -DWITH_OPENNI=FALSE
  -DWITH_OPENNI2=FALSE
  -DWITH_PCAP=OFF
  -DWITH_PNG=OFF
  -DWITH_QHULL=OFF
  -DWITH_QT=OFF
  -DWITH_RSSDK=FALSE
  -DWITH_RSSDK2=FALSE
  -DWITH_VTK=OFF
)

MODULES=(
  -DBUILD_visualization=OFF
  -DBUILD_outofcore=OFF
  -DBUILD_people=OFF
  -DBUILD_common=ON
  -DBUILD_features=ON
  -DBUILD_filters=ON
  -DBUILD_geometry=ON
  -DBUILD_io=ON
  -DBUILD_kdtree=ON
  -DBUILD_stereo=ON
  -DBUILD_keypoints=ON
  -DBUILD_ml=ON
  -DBUILD_octree=ON
  -DBUILD_recognition=ON
  -DBUILD_registration=ON
  -DBUILD_sample_consensus=ON
  -DBUILD_search=ON
  -DBUILD_segmentation=ON
  -DBUILD_surface=ON
  -DBUILD_tracking=ON
)

cd $LIB_PATH
rm -rf $LIB_PATH/build
mkdir -p build
cd build

emcmake cmake ${DEPS[@]} ${CONFIG[@]} ${SUPPORT[@]} ${MODULES[@]} ..
emmake make -j6 install

rm -rf !(include|lib)