EMFLAGS = \
 -DEIGEN_INCLUDE_DIR="/workspaces/pcl.js/core/pcl/third_party/eigen3" \
 -DFLANN_INCLUDE_DIR="/usr/include" \
 -DFLANN_LIBRARY="/usr/lib/x86_64-linux-gnu/libflann_cpp_s.a"
 #  -DBoost_INCLUDE_DIR="/workspaces/pcl.js/core/pcl/third_party/boost" \
#  -DBoost_LIBRARY_DIRS="/usr/lib/x86_64-linux-gnu" \
#  -DBoost_LIBRARIES="/usr/lib/x86_64-linux-gnu/libboost_filesystem.a; /usr/lib/x86_64-linux-gnu/libboost_date_time.a; /usr/lib/x86_64-linux-gnu/libboost_iostreams.a; /usr/lib/x86_64-linux-gnu/libboost_system.a; /usr/lib/x86_64-linux-gnu/libboost_regex.a"

build:
emcmake cmake .. $(EMFLAGS)
