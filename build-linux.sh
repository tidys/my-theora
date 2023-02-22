
BUILD_LIBS=${HOME}/build_libs
 
export PATH=${BUILD_LIBS}/bin:${PATH}
export PKG_CONFIG_PATH=${BUILD_LIBS}/lib/pkgconfig:${PKG_CONFIG_PATH}
 
# sed -i 's/png_\(sizeof\)/\1/g' examples/png2theora.c
./autogen.sh
autoreconf -fiv
 
./configure \
    --prefix=${BUILD_LIBS} \
    CFLAGS="-I${BUILD_LIBS}/include" \
    LDFLAGS="-L${BUILD_LIBS}/lib"
 
make