FROM udif/cae-build-base
MAINTAINER Udi Finkelstein <github@udifink.com>

RUN \
git clone https://github.com/udif/icestorm.git && \
  git clone https://github.com/FPGAwars/toolchain-icestorm.git && \
  cp -pR toolchain-icestorm/build-data/windows/include/*/*.h /usr/local/include && \
  cp -pR toolchain-icestorm/build-data/windows/lib/* /usr/local/lib && \
  rm -rf toolchain-icestorm && \
  sed -i 's/-lftdi/-lftdi1/g' icestorm/iceprog/Makefile && \
  mkdir -p /usr/local/src/mxe/usr/bin && \
  ln -s /usr/bin/i686-w64-mingw32-gcc /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-gcc && \
  ln -s /usr/bin/i686-w64-mingw32-g++ /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-g++ && \
  ln -s /usr/bin/i686-w64-mingw32-pkg-config /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-pkg-config && \
  ln -s /usr/lib/mxe /usr/local/src/mxe && \
  cd icestorm && make -j$(nproc) mxebin && \
  mkdir /zip && \
  n=`git rev-parse HEAD | sed -e 's/\(.......\).*/\1/'` && \
  mv icestorm-win32.zip /zip/icestorm-win32-$n.zip && \
  make -C icebox install && \
  cd / && git clone https://github.com/cseed/arachne-pnr.git && cd arachne-pnr && \
  make mxebin 2>&1 | tee mxebin.log && \
  n=`git rev-parse HEAD | sed -e 's/\(.......\).*/\1/'` && \
  mv arachne-pnr-win32.zip /zip/arachne-pnr-win32-$n.zip

