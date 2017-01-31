FROM udif/cae-build-base
MAINTAINER Udi Finkelstein <github@udifink.com>
ENV ARCH i386
RUN \
git clone https://github.com/cliffordwolf/icestorm.git && \
  curl -LO https://github.com/FPGAwars/libftdi-cross-builder/releases/download/v0.2/libftdi-windows_${ARCH}-2.zip && \
  unzip libftdi-windows_${ARCH}-2.zip -d /tmpzip && \
  cp -pR /tmpzip/include/*/*.h /usr/local/include && \
  cp -pR /tmpzip/lib/* /usr/local/lib && \
  sed -i 's/-lftdi/-lftdi1/g' icestorm/iceprog/Makefile && \
  mkdir -p /usr/local/src/mxe/usr/bin && \
  ln -s /usr/bin/i686-w64-mingw32-gcc /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-gcc && \
  ln -s /usr/bin/i686-w64-mingw32-g++ /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-g++ && \
  ln -s /usr/bin/i686-w64-mingw32-pkg-config /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-pkg-config && \
  ln -s /usr/lib/mxe /usr/local/src/mxe && \
  cd icestorm && make -j$(nproc) mxebin && \
  mkdir /icestorm-win32 && \
  cp -pR /tmpzip/bin/* /icestorm-win32 && \
  rm -rf tmp && \
  zip icestorm-win32.zip /icestorm-win32/* && \
  mkdir /zip && \
  n=`git rev-parse HEAD | sed -e 's/\(.......\).*/\1/'` && \
  mv icestorm-win32.zip /zip/icestorm-win32-$n.zip && \
  make -C icebox install && \
  cd / && git clone https://github.com/cseed/arachne-pnr.git && cd arachne-pnr && \
  make mxebin 2>&1 | tee mxebin.log && \
  n=`git rev-parse HEAD | sed -e 's/\(.......\).*/\1/'` && \
  mv arachne-pnr-win32.zip /zip/arachne-pnr-win32-$n.zip

